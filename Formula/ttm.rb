class Ttm < Formula
  desc ""
  homepage ""
  version "v0.0.21"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.21/ttm-v0.0.21-x86_64-apple-darwin.tar.gz"
      sha256 "e5e48fca80ffb359b2b5544ae5785cabdfc051c8cb3c66100c334600eb688be6"

      def install
        bin.install "ttm"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.21/ttm-v0.0.21-aarch64-apple-darwin.tar.gz"
      sha256 "ed5f725048fe0d872f61e1110d66b7fec6ccb3f59f794c270402e0d66e2d521d"

      def install
        bin.install "ttm"
      end
    end
  end
end
