class Dotslide < Formula
  desc ""
  homepage ""
  version "v0.0.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/dotslide/releases/download/v0.0.7/dotslide_0.0.7_darwin_amd64.tar.gz"
      sha256 "10b8c3c191a6ac55601b372a4f07ce0a97eaae72526a852992f761bfe47b0980"

      def install
        bin.install "dotslide"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/dotslide/releases/download/v0.0.7/dotslide_0.0.7_darwin_arm64.tar.gz"
      sha256 "33aff1205f1465a6454112fffb8dd78070ebf5508eed2bafeec1f7601b3c91eb"

      def install
        bin.install "dotslide"
      end
    end
  end
end
