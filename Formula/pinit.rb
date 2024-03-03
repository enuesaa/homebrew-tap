class Pinit < Formula
  desc ""
  homepage ""
  version "v0.0.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/pinit/releases/download/v0.0.8/pinit_0.0.8_darwin_amd64.tar.gz"
      sha256 "ffcfcd163f6ba16fdb4cc82a837a3fad9985b41a2af8c362431e7dbc489638fa"

      def install
        bin.install "pinit"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/pinit/releases/download/v0.0.8/pinit_0.0.8_darwin_arm64.tar.gz"
      sha256 "19890c5568c6a917cd1dec17183ffdfc88b7352e5cbd4f8651d5cf40ab210a03"

      def install
        bin.install "pinit"
      end
    end
  end
end
