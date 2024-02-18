class Checksum
  attr_accessor :url, :sha256

  def initialize(url, sha256)
    @url = url
    @sha256 = sha256
  end
end
