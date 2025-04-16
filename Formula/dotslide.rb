class Dotslide < Formula
  desc ""
  homepage ""
  version "v0.0.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/dotslide/releases/download/v0.0.4/dotslide_0.0.4_darwin_amd64.tar.gz"
      sha256 "aa65c8bc41e5defc8e7cb3bd49039c5c5e1b258c84c183933037ed45f21518fe"

      def install
        bin.install "dotslide"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/dotslide/releases/download/v0.0.4/dotslide_0.0.4_darwin_arm64.tar.gz"
      sha256 "c93c49075bb82be81edd4e35098d8978e95ec02ab4bcfbeae845c4292d5b8899"

      def install
        bin.install "dotslide"
      end
    end
  end
end
