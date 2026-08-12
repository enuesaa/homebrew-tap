class Licat < Formula
  desc ""
  homepage ""
  version "v0.0.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/licat/releases/download/v0.0.2/licat-x86_64-apple-darwin.tar.gz"
      sha256 "3947915afacb9056c0855542b6020157ae4d2cb685553820f8a51be23ff9d450"

      def install
        bin.install "licat"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/licat/releases/download/v0.0.2/licat-aarch64-apple-darwin.tar.gz"
      sha256 "33e00dd422db3bc8e568bfa493707bba897e29245318b41726625dd24aa94492"

      def install
        bin.install "licat"
      end
    end
  end
end
