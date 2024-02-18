class Cpbuf < Formula
  desc ""
  homepage ""
  version "v0.0.12"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/cpbuf/releases/download/v0.0.12/cpbuf_0.0.12_darwin_amd64.tar.gz"
      sha256 "72a0728392296d5c798c4931edaee92f6391d5ab2d4fbef2b9ee018ac700a4e1"

      def install
        bin.install "cpbuf"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/cpbuf/releases/download/v0.0.12/cpbuf_0.0.12_darwin_arm64.tar.gz"
      sha256 "5f88ccbeb18ce465914a921b4f94ccdcc6eb5f82966d3cefc036398c602eeb2b"

      def install
        bin.install "cpbuf"
      end
    end
  end
end
