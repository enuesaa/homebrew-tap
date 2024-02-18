require 'octokit'
require 'net/http'
require_relative 'checksum'

class Program
  attr_accessor :repo

  def initialize(repo)
    @repo = repo # like `enuesaa/pinit`
  end

  def fetch
    for asseturl in list_asseturls do
      if asseturl.include? 'checksum'
        body = fetch_checksums(asseturl)
        checksums = parse_checksums(body)
        puts checksums
      end
    end
  end

  def list_asseturls
    client = Octokit::Client.new
    latest_release = client.latest_release('enuesaa/pinit')
    urls = latest_release.assets.map do |asset|
      asset.browser_download_url
    end
    urls
  end

  def fetch_checksums(url)
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    puts "#{response.code}: #{uri.host}"

    uri = URI.parse(response['location'])
    response = Net::HTTP.get_response(uri)
    puts "#{response.code}: #{uri.host}"

    response.body
  end

  def parse_checksums(text)
    lines = text.split("\n")
    checksums = lines.map do |line|
      values = line.split(/\s+/)
      sha256, file = values
      Checksum.new(file, sha256)
    end
    checksums
  end
end
