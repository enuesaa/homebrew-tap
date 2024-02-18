require_relative 'checksums'
require_relative 'assetfetcher'

class Program
  attr_accessor :repo

  def initialize(repo)
    @repo = repo # like `enuesaa/pinit`
  end

  def fetch
    fetcher = Assetfetcher.new(@repo)
    for url in fetcher.list_urls do
      if url.include? 'checksum'
        body = fetcher.fetch_body(url)
        checksums = Checksums.new(body)
        puts checksums
      end
    end
  end
end
