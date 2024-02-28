class Cpbuf < Formula
  desc ""
  homepage ""
  version "v0.0.13"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/cpbuf/releases/download/v0.0.13/cpbuf_0.0.13_darwin_amd64.tar.gz"
      sha256 "e09936957ecb3a211a76de7b61c03de53e96ce5c2ea12fe64b6f81e0c523a383"

      def install
        bin.install "cpbuf"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/cpbuf/releases/download/v0.0.13/cpbuf_0.0.13_darwin_arm64.tar.gz"
      sha256 "e1c546e118ed68c6790328bb9685ed63a6054b5fcd2357afdfa062489a551459"

      def install
        bin.install "cpbuf"
      end
    end
  end
end
