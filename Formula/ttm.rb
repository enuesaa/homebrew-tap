class Ttm < Formula
  desc ""
  homepage ""
  version "v0.0.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.4/ttm-v0.0.4-x86_64-apple-darwin.tar.gz"
      sha256 "3c3fd144e5b5d0363f514ecd113ec1826da663f9330d4c788419b6c1758589f0"

      def install
        bin.install "ttm"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.4/ttm-v0.0.4-aarch64-apple-darwin.tar.gz"
      sha256 "b59f59323919cb44088212d4b3afaa5d3293f6c2aef0e1a75b83a6571fc9e69d"

      def install
        bin.install "ttm"
      end
    end
  end
end
