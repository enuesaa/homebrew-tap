class Checksums
  attr_accessor :macamd64url, :macamd64sha256, :macarm64url, :macarm64sha256

  def initialize(checksum_file_url, text)
    @macamd64url = ''
    @macamd64sha256 = ''
    @macarm64url = ''
    @macarm64sha256 = ''

    lines = text.split("\n")
    for line in lines do
      sha256, file = line.split(/\s+/)
      if file.include?('darwin_amd64') || file.include?('x86_64-apple-darwin')
        @macamd64url = calcurl(checksum_file_url, file)
        @macamd64sha256 = sha256
      end
      if file.include?('darwin_arm64') || file.include?('aarch64-apple-darwin')
        @macarm64url = calcurl(checksum_file_url, file)
        @macarm64sha256 = sha256
      end
    end
  end

  def calcurl(checksum_file_url, filename)
    checksum_filename = File.basename(checksum_file_url)
    checksum_file_url.sub(checksum_filename, filename)
  end
end
