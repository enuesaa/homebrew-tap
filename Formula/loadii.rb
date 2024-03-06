class Loadii < Formula
  desc ""
  homepage ""
  version "v0.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/loadii/releases/download/v0.0.1/loadii_0.0.1_darwin_amd64.tar.gz"
      sha256 "41bd4cb19dac7a9272b85fafe60b11a8743fb3263828e3f8a949b1d3b5c1d089"

      def install
        bin.install "loadii"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/loadii/releases/download/v0.0.1/loadii_0.0.1_darwin_arm64.tar.gz"
      sha256 "050d9748c10c0dab12cb5b3ab095421441ae8a546c46446d632ce9fb851b767f"

      def install
        bin.install "loadii"
      end
    end
  end
end
