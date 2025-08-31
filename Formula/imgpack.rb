class Imgpack < Formula
  desc ""
  homepage ""
  version "v0.1.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/imgpack/releases/download/v0.1.3/imgpack-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "276d86f622e046a5c2f0142b87e1d55dd857f325714933b5c5bafc5b83a9069b"

      def install
        bin.install "imgpack"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/imgpack/releases/download/v0.1.3/imgpack-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "6533edddbb8d209424187e3ff4ab447747c5789d7bde15a730f96de063ed9ad9"

      def install
        bin.install "imgpack"
      end
    end
  end
end
