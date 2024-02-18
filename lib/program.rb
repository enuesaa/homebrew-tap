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

  def fetch_version
    fetcher = Assetfetcher.new(repo)
    fetcher.latest_version
  end

  def fetch_checksums
    fetcher = Assetfetcher.new(repo)
    for url in fetcher.list_urls do
      if url.include? 'checksum'
        body = fetcher.fetch_body(url)
        return Checksums.new(url, body)
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

  def write(version, checksums)
    name = @name

    tmpl = File.read(tmplpath)
    rendered = ERB.new(tmpl).result(binding)
    File.write(filepath, rendered)
  end
end
