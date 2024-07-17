class Cpbuf < Formula
  desc ""
  homepage ""
  version "v0.0.15"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/cpbuf/releases/download/v0.0.15/cpbuf_0.0.15_darwin_amd64.tar.gz"
      sha256 "82557c4d682b4c5e3735b43422981e3f9ade8563b84217b6a3c403dd4b254a7e"

      def install
        bin.install "cpbuf"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/cpbuf/releases/download/v0.0.15/cpbuf_0.0.15_darwin_arm64.tar.gz"
      sha256 "5ea38c273aae818e9759186735614aeb8082200eb2adc1088d5211007595b208"

      def install
        bin.install "cpbuf"
      end
    end
  end
end
