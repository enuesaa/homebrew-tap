class Ttm < Formula
  desc ""
  homepage ""
  version "v0.0.19"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.19/ttm-v0.0.19-x86_64-apple-darwin.tar.gz"
      sha256 "2e81ea2af593c460d20cc020b11f7edbdded57c0dcd50e2fc81c6c4d390424ce"

      def install
        bin.install "ttm"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.19/ttm-v0.0.19-aarch64-apple-darwin.tar.gz"
      sha256 "c7c942006ce0eac19e848dc6b9e01424a39702242f86695c256c2d405bde071f"

      def install
        bin.install "ttm"
      end
    end
  end
end
