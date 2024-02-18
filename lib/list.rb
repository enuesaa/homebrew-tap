require 'octokit'
require 'net/http'

client = Octokit::Client.new

latest_release = client.latest_release('enuesaa/pinit')
puts latest_release.name

for asset in latest_release.assets do
  puts asset.browser_download_url

  if asset.browser_download_url.include? 'checksum'
    puts 'found'
    url = URI.parse(asset.browser_download_url)
    response = Net::HTTP.get_response(url)
    puts "#{response.code}: #{response.message}"

    downloadurl = response['location']
    puts downloadurl

    url = URI.parse(downloadurl)
    response = Net::HTTP.get_response(url)
    puts "#{response.code}: #{response.message}"

    text = response.body
    lines = text.split("\n")
    result = lines.map do |line|
      values = line.split(/\s+/)
      sha256, file = values
      {sha256: sha256, file: file}
    end
    puts result
  end
end
