class Licat < Formula
  desc ""
  homepage ""
  version "v0.0.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/licat/releases/download/v0.0.3/licat-x86_64-apple-darwin.tar.gz"
      sha256 "7321b7e5a809795ea0d69be9e26fc77a39ce3b07c4812cea5efe811fbb56c813"

      def install
        bin.install "licat"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/licat/releases/download/v0.0.3/licat-aarch64-apple-darwin.tar.gz"
      sha256 "82d8af2630a59f9dabf78f258c472387e84acbebc7fda5a066a14a7569790865"

      def install
        bin.install "licat"
      end
    end
  end
end
