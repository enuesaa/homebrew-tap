class Dotslide < Formula
  desc ""
  homepage ""
  version "v0.0.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/dotslide/releases/download/v0.0.3/dotslide_0.0.3_darwin_amd64.tar.gz"
      sha256 "5833286600daa7b99e748770599b62061cc7674279c0a54044d234e808de8072"

      def install
        bin.install "dotslide"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/dotslide/releases/download/v0.0.3/dotslide_0.0.3_darwin_arm64.tar.gz"
      sha256 "ad7079e5abcaa9c4fc193d12aefca90ac0979bbd68a61c1bc0e31e6534a5c2e9"

      def install
        bin.install "dotslide"
      end
    end
  end
end
