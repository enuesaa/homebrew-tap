class Dotslide < Formula
  desc ""
  homepage ""
  version "v0.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/dotslide/releases/download/v0.0.1/dotslide_0.0.1_darwin_amd64.tar.gz"
      sha256 "871c789ea14de123c12648f335ca9773aa30d53b71ba87bc0026c7f174aca730"

      def install
        bin.install "dotslide"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/dotslide/releases/download/v0.0.1/dotslide_0.0.1_darwin_arm64.tar.gz"
      sha256 "c731d0da220f1308927b33bcd03972d317d7806670a6104c7afdba89057e652c"

      def install
        bin.install "dotslide"
      end
    end
  end
end
