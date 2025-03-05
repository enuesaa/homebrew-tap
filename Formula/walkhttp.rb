class Walkhttp < Formula
  desc ""
  homepage ""
  version "v0.0.11"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/walkhttp/releases/download/v0.0.11/walkhttp_0.0.11_darwin_amd64.tar.gz"
      sha256 "7d3d1a3bd6d418180f84676d68bd43c0309168257eef63e65ec191263af66bfc"

      def install
        bin.install "walkhttp"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/walkhttp/releases/download/v0.0.11/walkhttp_0.0.11_darwin_arm64.tar.gz"
      sha256 "84add3ae763e6d29ed0b7fb848b53fa1ef7bc072ac60058e0cbdecd106d2e122"

      def install
        bin.install "walkhttp"
      end
    end
  end
end
