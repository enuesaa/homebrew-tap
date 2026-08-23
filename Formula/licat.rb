class Licat < Formula
  desc ""
  homepage ""
  version "v0.0.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/licat/releases/download/v0.0.4/licat-x86_64-apple-darwin.tar.gz"
      sha256 "35c00a2dda40abe376a29c156543f86bbf8b1ad1476f382827694a5db382f741"

      def install
        bin.install "licat"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/licat/releases/download/v0.0.4/licat-aarch64-apple-darwin.tar.gz"
      sha256 "721830b3572d493668028b093f9bdaeb0f28c24dbf16cb099c12859cc0b5e283"

      def install
        bin.install "licat"
      end
    end
  end
end
