require_relative 'checksums'
require_relative 'assetfetcher'
require 'erb'

class Program
  attr_accessor :user, :name

  def initialize(user, name)
    @user = user
    @name = name
  end

  def repo
    "#{@user}/#{@name}"
  end

  def fetch
    fetcher = Assetfetcher.new(repo)
    for url in fetcher.list_urls do
      if url.include? 'checksum'
        body = fetcher.fetch_body(url)
        checksums = Checksums.new(body)
        puts checksums
        write(checksums)
      end
    end
  end

  def filepath
    project = File.expand_path('..', __dir__)
    File.join(project, "Formula/#{@name}.rb")
  end

  def tmplpath
    project = File.expand_path('..', __dir__)
    File.join(project, "lib/formula.erb")
  end

  def write(checksums)
    name = 'pinit'
    version = '0.0.7'

    tmpl = File.read(tmplpath)
    rendered = ERB.new(tmpl).result(binding)
    File.write(filepath, rendered)
  end
end
