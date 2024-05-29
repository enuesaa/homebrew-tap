class Pinit < Formula
  desc ""
  homepage ""
  version "v0.0.10"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/pinit/releases/download/v0.0.10/pinit_0.0.10_darwin_amd64.tar.gz"
      sha256 "61b4d3d8e275fda2d3f485b212592060acf50f3b419acf9989f02dde2f6f7605"

      def install
        bin.install "pinit"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/pinit/releases/download/v0.0.10/pinit_0.0.10_darwin_arm64.tar.gz"
      sha256 "1c7f47c47fa5d79d632828cffa1d3878c3214c6cd25029606d5bf1b1e1e52ccc"

      def install
        bin.install "pinit"
      end
    end
  end
end
