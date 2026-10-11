class Cpbuf < Formula
  desc ""
  homepage ""
  version "v0.0.24"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/cpbuf/releases/download/v0.0.24/cpbuf_0.0.24_darwin_amd64.tar.gz"
      sha256 "fa6244fb615996daf0625d2460f6ca12a1f8593fc7388df2c07be1f3dbd3176d"

      def install
        bin.install "cpbuf"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/cpbuf/releases/download/v0.0.24/cpbuf_0.0.24_darwin_arm64.tar.gz"
      sha256 "ac377005298196451b63a47ddb707f597feb5471538a4a45e21e393a8403eb37"

      def install
        bin.install "cpbuf"
      end
    end
  end
end
