require 'octokit'
require 'net/http'
require 'faraday'

class Assetfetcher
  attr_accessor :repo

  def initialize(repo)
    @repo = repo
  end

  def latest_version
    client = Octokit::Client.new
    latest_release = client.latest_release(@repo)
    latest_release.tag_name
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
    conn = Faraday.new
    response = conn.get(url)
    
    response.body
  end
end
