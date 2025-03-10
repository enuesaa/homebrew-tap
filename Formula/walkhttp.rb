class Walkhttp < Formula
  desc ""
  homepage ""
  version "v0.0.12"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/walkhttp/releases/download/v0.0.12/walkhttp_0.0.12_darwin_amd64.tar.gz"
      sha256 "6a1f39f99d2b36b78c37f60090016dc39783ea370477b8a149693baa216a7eea"

      def install
        bin.install "walkhttp"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/walkhttp/releases/download/v0.0.12/walkhttp_0.0.12_darwin_arm64.tar.gz"
      sha256 "09ba8cb1788a0dc25c591999d5e0c1bdad8e92ebcb02276827197ee8d20e4081"

      def install
        bin.install "walkhttp"
      end
    end
  end
end
