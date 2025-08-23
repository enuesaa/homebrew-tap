class Pinit < Formula
  desc ""
  homepage ""
  version "v0.0.12"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/pinit/releases/download/v0.0.12/pinit_0.0.12_darwin_amd64.tar.gz"
      sha256 "934d0753127c4846939bd13096106c5a3757c20895be2b919250370db99c9e9f"

      def install
        bin.install "pinit"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/pinit/releases/download/v0.0.12/pinit_0.0.12_darwin_arm64.tar.gz"
      sha256 "a133779ded243840920ca2d650f52f4afedf0a3e59ddcae6ce72ca6747724e52"

      def install
        bin.install "pinit"
      end
    end
  end
end
