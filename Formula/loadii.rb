class Loadii < Formula
  desc ""
  homepage ""
  version "v0.0.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/loadii/releases/download/v0.0.2/loadii_0.0.2_darwin_amd64.tar.gz"
      sha256 "0b2e70b1556f87c211ff20ce3ca7cb83b76811c823fa7cb299b5cc40eb920e62"

      def install
        bin.install "loadii"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/loadii/releases/download/v0.0.2/loadii_0.0.2_darwin_arm64.tar.gz"
      sha256 "ebf019122a8801bf4c6636a0610590a3230d1ab9a62f4958171e4966272168a6"

      def install
        bin.install "loadii"
      end
    end
  end
end
