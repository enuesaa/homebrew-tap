class Cpbuf < Formula
  desc ""
  homepage ""
  version "v0.0.22"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/cpbuf/releases/download/v0.0.22/cpbuf_0.0.22_darwin_amd64.tar.gz"
      sha256 "7611e404c040dafc96f00507e13319e3108b5db7af3b3df3b35ed72386cb2e21"

      def install
        bin.install "cpbuf"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/cpbuf/releases/download/v0.0.22/cpbuf_0.0.22_darwin_arm64.tar.gz"
      sha256 "7db9a7f72130b282118bc79077f383d296258c547ada0c732a5173116c8820c0"

      def install
        bin.install "cpbuf"
      end
    end
  end
end
