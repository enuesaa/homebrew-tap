require_relative 'checksums'
require_relative 'assetfetcher'

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

  def write(checksums)
    lines = File.open(filepath, 'r').readlines
    lines.shift(4)
    lines.unshift(sprintf('macarm64sha256 = "%s"', checksums.macarm64sha256))
    lines.unshift(sprintf('macarm64url = "%s"', checksums.macarm64url))
    lines.unshift(sprintf('macamd64sha256 = "%s"', checksums.macamd64sha256))
    lines.unshift(sprintf('macamd64url = "%s"', checksums.macamd64url))
    puts lines

    File.open(filepath, 'w') do |file|
      file.puts lines
    end
  end
end
