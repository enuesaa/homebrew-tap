require 'octokit'
require 'net/http'

class Assetfetcher
  attr_accessor :repo

  def initialize(repo)
    @repo = repo
  end

  def list_urls
    client = Octokit::Client.new
    latest_release = client.latest_release(@repo)
    urls = latest_release.assets.map do |asset|
      asset.browser_download_url
    end
    urls
  end

  def fetch_body(url)
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    puts "#{response.code}: #{uri.host}"

    uri = URI.parse(response['location'])
    response = Net::HTTP.get_response(uri)
    puts "#{response.code}: #{uri.host}"

    response.body
  end
end
