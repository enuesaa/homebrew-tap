class Imgpack < Formula
  desc ""
  homepage ""
  version "v0.1.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/imgpack/releases/download/v0.1.5/imgpack-v0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "e715518dc0f51b901c0d92a71207835e7194b44f73f631f709d4a5b6df184ec8"

      def install
        bin.install "imgpack"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/imgpack/releases/download/v0.1.5/imgpack-v0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "f5bf2b0cd361bc57e09c89e670445ecec63097e012209000adca31ab2a62d614"

      def install
        bin.install "imgpack"
      end
    end
  end
end
