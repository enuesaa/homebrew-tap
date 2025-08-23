class Imgpack < Formula
  desc ""
  homepage ""
  version "v0.1.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/imgpack/releases/download/v0.1.1/imgpack-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "49d4c5acb09feb21e0f5fda3f5e142b7383af77f976203691d7852379b3300ca"

      def install
        bin.install "imgpack"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/imgpack/releases/download/v0.1.1/imgpack-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "0f98c5de1cb8a4da1acf2c0c67fd4366da0d7b97f1f5ccb3d294effff1429ca7"

      def install
        bin.install "imgpack"
      end
    end
  end
end
