class Ttm < Formula
  desc ""
  homepage ""
  version "v0.0.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.9/ttm-v0.0.9-x86_64-apple-darwin.tar.gz"
      sha256 "37cf4a1769912ef2fc836831a1a59df77548de200e5dcf779cc7ec426735e98d"

      def install
        bin.install "ttm"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.9/ttm-v0.0.9-aarch64-apple-darwin.tar.gz"
      sha256 "4d7979301f0881183a404ad7f3bf6ceedb04a2d2579652ff00124a4522f74f36"

      def install
        bin.install "ttm"
      end
    end
  end
end
