class Loadii < Formula
  desc ""
  homepage ""
  version "v0.0.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/loadii/releases/download/v0.0.9/loadii_0.0.9_darwin_amd64.tar.gz"
      sha256 "0624a72978ec6c0671dc4a8b212f76852bafa803ea882c1b02ac0d7ae820d2de"

      def install
        bin.install "loadii"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/loadii/releases/download/v0.0.9/loadii_0.0.9_darwin_arm64.tar.gz"
      sha256 "99aaa9e26ec3eccdde5d761e0002ae4e0ff319d972d7693ad6c22ac27b7f22a8"

      def install
        bin.install "loadii"
      end
    end
  end
end
