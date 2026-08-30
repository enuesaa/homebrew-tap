class Licat < Formula
  desc ""
  homepage ""
  version "v0.0.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/licat/releases/download/v0.0.6/licat-x86_64-apple-darwin.tar.gz"
      sha256 "f1508a2c8a4b68f770d5aa341aca656d0bc78edc8fa4a37e9c9b2eb7addb4550"

      def install
        bin.install "licat"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/licat/releases/download/v0.0.6/licat-aarch64-apple-darwin.tar.gz"
      sha256 "1308b32468be18a4477d274293366c8b788fdeebcf60bf7800c70226bd0ef11e"

      def install
        bin.install "licat"
      end
    end
  end
end
