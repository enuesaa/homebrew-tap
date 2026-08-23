class Licat < Formula
  desc ""
  homepage ""
  version "v0.0.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/licat/releases/download/v0.0.5/licat-x86_64-apple-darwin.tar.gz"
      sha256 "d8e46ee36e9558afc9c7a23984ddee4f6b2002e82de6678c990e7dd577bf8089"

      def install
        bin.install "licat"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/licat/releases/download/v0.0.5/licat-aarch64-apple-darwin.tar.gz"
      sha256 "f8bbb86368185c73913c38d16ad0fe9bc457e98042cbae5021fd49a06b66b756"

      def install
        bin.install "licat"
      end
    end
  end
end
