class Cpbuf < Formula
  desc ""
  homepage ""
  version "v0.0.16"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/cpbuf/releases/download/v0.0.16/cpbuf_0.0.16_darwin_amd64.tar.gz"
      sha256 "cdc280e358e1d02da6c60da2ee35ae6d6597d96dc978bc959eba888e9ee881f2"

      def install
        bin.install "cpbuf"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/cpbuf/releases/download/v0.0.16/cpbuf_0.0.16_darwin_arm64.tar.gz"
      sha256 "79eaaf933e0154a72eaf3c82af6ffa88f92a120e53c2bf6b2f91ab05e57fc0b6"

      def install
        bin.install "cpbuf"
      end
    end
  end
end
