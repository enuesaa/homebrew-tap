class Imgpack < Formula
  desc ""
  homepage ""
  version "v0.0.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/imgpack/releases/download/v0.0.6/imgpack_0.0.6_darwin_amd64.tar.gz"
      sha256 "71f9064cea1a341d813755bc0009c44563fc9f88acce95dc327f17e080cc337d"

      def install
        bin.install "imgpack"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/imgpack/releases/download/v0.0.6/imgpack_0.0.6_darwin_arm64.tar.gz"
      sha256 "fc23fff4518952cedd3c44f147b7761d1b969a10650f9cf34a92515fa17e18fb"

      def install
        bin.install "imgpack"
      end
    end
  end
end
