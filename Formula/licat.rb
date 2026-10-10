class Licat < Formula
  desc ""
  homepage ""
  version "v0.0.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/licat/releases/download/v0.0.7/licat-x86_64-apple-darwin.tar.gz"
      sha256 "c3617bb74c529b86ce3a5e371d837cebcf2aa45ddac004fd98c811eedda993bf"

      def install
        bin.install "licat"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/licat/releases/download/v0.0.7/licat-aarch64-apple-darwin.tar.gz"
      sha256 "f236ce1bdfe5e606642d6e3769d2f11b1832a7cd712e51eff0feab3192f776ea"

      def install
        bin.install "licat"
      end
    end
  end
end
