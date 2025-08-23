class Dotslide < Formula
  desc ""
  homepage ""
  version "v0.0.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/dotslide/releases/download/v0.0.5/dotslide_0.0.5_darwin_amd64.tar.gz"
      sha256 "e674f3e53414a0b69d7677260129aeb1ac3a3cc8be7b8bed0bd5e051b31b4e43"

      def install
        bin.install "dotslide"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/dotslide/releases/download/v0.0.5/dotslide_0.0.5_darwin_arm64.tar.gz"
      sha256 "3c303124fbc9ca452c69be859ad41d100bd88518cc97c7b519f49a4f605a5eed"

      def install
        bin.install "dotslide"
      end
    end
  end
end
