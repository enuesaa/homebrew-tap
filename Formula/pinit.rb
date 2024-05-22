class Pinit < Formula
  desc ""
  homepage ""
  version "v0.0.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/pinit/releases/download/v0.0.9/pinit_0.0.9_darwin_amd64.tar.gz"
      sha256 "5547e26d4f695d4773e0bf5ac256adb0d4e676be33190abc7d35ac3dde13b322"

      def install
        bin.install "pinit"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/pinit/releases/download/v0.0.9/pinit_0.0.9_darwin_arm64.tar.gz"
      sha256 "89e826ad60597beeae684be57826c4cb797c538fb369f3eb7195494b06f8f4ab"

      def install
        bin.install "pinit"
      end
    end
  end
end
