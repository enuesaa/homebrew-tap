class Loadii < Formula
  desc ""
  homepage ""
  version "v0.0.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/loadii/releases/download/v0.0.8/loadii_0.0.8_darwin_amd64.tar.gz"
      sha256 "d1fe910345f6f49187b6441e06a1049934e0c42f3cc26cfbf5b26eace144550b"

      def install
        bin.install "loadii"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/loadii/releases/download/v0.0.8/loadii_0.0.8_darwin_arm64.tar.gz"
      sha256 "e89b5f8adfd4a6cef6c42ec3a8b1865061abd3ab43809dfe136171f6cc1e5d37"

      def install
        bin.install "loadii"
      end
    end
  end
end
