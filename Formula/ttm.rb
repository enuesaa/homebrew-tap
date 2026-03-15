class Ttm < Formula
  desc ""
  homepage ""
  version "v0.0.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.8/ttm-v0.0.8-x86_64-apple-darwin.tar.gz"
      sha256 "8e89d88e7f1807378c62257f54fed7e4c4889bd6db11a7194ff122dfc000b1f1"

      def install
        bin.install "ttm"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.8/ttm-v0.0.8-aarch64-apple-darwin.tar.gz"
      sha256 "08e2795e4432048b49133205855f8c7c6d4adc6c3b782857823850977bbdf56c"

      def install
        bin.install "ttm"
      end
    end
  end
end
