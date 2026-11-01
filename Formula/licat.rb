class Licat < Formula
  desc ""
  homepage ""
  version "v0.0.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/licat/releases/download/v0.0.8/licat-x86_64-apple-darwin.tar.gz"
      sha256 "c7055ef6c13d1f9f1bba9a14724411547d750df382051afaffe20282082f9e90"

      def install
        bin.install "licat"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/licat/releases/download/v0.0.8/licat-aarch64-apple-darwin.tar.gz"
      sha256 "8940ef6d34815c1187f0996351e93a0d257461c04fc3babe9233f6165109cfa0"

      def install
        bin.install "licat"
      end
    end
  end
end
