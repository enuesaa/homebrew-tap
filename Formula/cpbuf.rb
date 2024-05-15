class Cpbuf < Formula
  desc ""
  homepage ""
  version "v0.0.14"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/cpbuf/releases/download/v0.0.14/cpbuf_0.0.14_darwin_amd64.tar.gz"
      sha256 "7b3af59dbd420da61da6984d1280209ed0893be3db9b046631cbde399d2c2f7a"

      def install
        bin.install "cpbuf"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/cpbuf/releases/download/v0.0.14/cpbuf_0.0.14_darwin_arm64.tar.gz"
      sha256 "a0be62cb9235789322ec23e4c43a55126d03ff4b7fcaa7a4e0e958ad12f509a1"

      def install
        bin.install "cpbuf"
      end
    end
  end
end
