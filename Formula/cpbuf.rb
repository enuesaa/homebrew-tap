class Cpbuf < Formula
  desc ""
  homepage ""
  version "v0.0.17"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/cpbuf/releases/download/v0.0.17/cpbuf_0.0.17_darwin_amd64.tar.gz"
      sha256 "7c4f7de3e4f03e16c8dd916967a4e1f5483db164a279be3d49257749d1bf21a7"

      def install
        bin.install "cpbuf"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/cpbuf/releases/download/v0.0.17/cpbuf_0.0.17_darwin_arm64.tar.gz"
      sha256 "f2719beb8ff3cd0e4a645d3d73040be56101e433cf6302e86ae1d1387fd51db6"

      def install
        bin.install "cpbuf"
      end
    end
  end
end
