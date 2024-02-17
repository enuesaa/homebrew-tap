require 'json'

rawdata = File.read('pinit.json')
data = JSON.parse(rawdata)

class Pinit < Formula
  desc ""
  homepage ""
  version "0.0.7"

  on_macos do
    if Hardware::CPU.intel?
      url data['macAmd64']['url']
      sha256 data['macAmd64']['sha256']

      def install
        bin.install "pinit"
      end
    end
    if Hardware::CPU.arm?
      url data['macArm64']['url']
      sha256 data['macArm64']['sha256']

      def install
        bin.install "pinit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/enuesaa/pinit/releases/download/v0.0.7/pinit_0.0.7_linux_arm64.tar.gz"
      sha256 "d5aa27728d80b38044a67e3e3df2df66b2c1e6db21dbf4f1a58598847164ee0e"

      def install
        bin.install "pinit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/pinit/releases/download/v0.0.7/pinit_0.0.7_linux_amd64.tar.gz"
      sha256 "a3ac7dcc914ba9387829c6901a2693bf23b46bbd9bb0b0651de80b66b714ad65"

      def install
        bin.install "pinit"
      end
    end
  end
end
