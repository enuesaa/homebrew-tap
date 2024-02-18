class Imgpack < Formula
  desc ""
  homepage ""
  version "v0.0.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/imgpack/releases/download/v0.0.3/imgpack_0.0.3_darwin_amd64.tar.gz"
      sha256 "524397ec2ee51408ba52a2a605ef322455a82b74e26e575efee422b115d04109"

      def install
        bin.install "imgpack"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/imgpack/releases/download/v0.0.3/imgpack_0.0.3_darwin_arm64.tar.gz"
      sha256 "e29d4ceb26099b6e7abe5e6c6779f09dac79662925f6e10e72571cc236d29eff"

      def install
        bin.install "imgpack"
      end
    end
  end
end
