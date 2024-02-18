require 'octokit'

client = Octokit::Client.new
repo = client.repository('enuesaa/pinit')
puts repo.name
puts repo.full_name

latest_release = client.latest_release('enuesaa/pinit')

puts latest_release.name

for asset in latest_release.assets do
  puts "#{asset.url} #{asset.browser_download_url}"
end
