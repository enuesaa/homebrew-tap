class Cpbuf < Formula
  desc ""
  homepage ""
  version "v0.0.20"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/cpbuf/releases/download/v0.0.20/cpbuf_0.0.20_darwin_amd64.tar.gz"
      sha256 "da77f63a5b25508639a5c4e07bc80f982f8c2f9af35bbc8e6ba134abe4be0016"

      def install
        bin.install "cpbuf"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/cpbuf/releases/download/v0.0.20/cpbuf_0.0.20_darwin_arm64.tar.gz"
      sha256 "1950ff5245e665ccc063a1ecd07822ad8075a5e47ff9bc7c3c4bab11d382447e"

      def install
        bin.install "cpbuf"
      end
    end
  end
end
