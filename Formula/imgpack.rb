class Imgpack < Formula
  desc ""
  homepage ""
  version "v0.1.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/imgpack/releases/download/v0.1.2/imgpack-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "b5576d279650cad711434750ebb7d71ef223da6cccb3de86cef969faa60d3e7b"

      def install
        bin.install "imgpack"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/imgpack/releases/download/v0.1.2/imgpack-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "e4cdd7aa013195626f59e0a98d9ebf2c2150d937fb6acdc66a5b2418461a3457"

      def install
        bin.install "imgpack"
      end
    end
  end
end
