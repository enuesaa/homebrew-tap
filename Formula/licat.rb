class Licat < Formula
  desc ""
  homepage ""
  version "v0.0.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/licat/releases/download/v0.0.5/licat-x86_64-apple-darwin.tar.gz"
      sha256 "6614e749786cef881bc67344a3678c23c2606ed6994d11ea4faa2909c62c11a3"

      def install
        bin.install "licat"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/licat/releases/download/v0.0.5/licat-aarch64-apple-darwin.tar.gz"
      sha256 "975b83dd4808dc9c9c1767ba299d0827e2ad7dccff65882a40c43aa0ea9e88e5"

      def install
        bin.install "licat"
      end
    end
  end
end
