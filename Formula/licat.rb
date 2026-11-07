class Licat < Formula
  desc ""
  homepage ""
  version "v0.0.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/licat/releases/download/v0.0.9/licat-x86_64-apple-darwin.tar.gz"
      sha256 "2b3dc66818a962d6deefaa3670f963b17bf5e16688c0eb253f382b5372243409"

      def install
        bin.install "licat"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/licat/releases/download/v0.0.9/licat-aarch64-apple-darwin.tar.gz"
      sha256 "5ed44fbab71e2717555cbc3a8792d8e0e82a6022133198e64c577f21630e227c"

      def install
        bin.install "licat"
      end
    end
  end
end
