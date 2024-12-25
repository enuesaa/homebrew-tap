class Dotslide < Formula
  desc ""
  homepage ""
  version "v0.0.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/dotslide/releases/download/v0.0.2/dotslide_0.0.2_darwin_amd64.tar.gz"
      sha256 "ad9bf79ce9ddbbe383cf11f7b1d071d31fe19dc3a014534dfecb3f079a636ba2"

      def install
        bin.install "dotslide"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/dotslide/releases/download/v0.0.2/dotslide_0.0.2_darwin_arm64.tar.gz"
      sha256 "a60cee79f6a47d05d2da177ae493aa684defecba0e01c676e39890ad17421368"

      def install
        bin.install "dotslide"
      end
    end
  end
end
