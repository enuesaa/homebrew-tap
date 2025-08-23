class Cywagon < Formula
  desc ""
  homepage ""
  version "v0.0.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/cywagon/releases/download/v0.0.5/cywagon_0.0.5_darwin_amd64.tar.gz"
      sha256 "ae9a0e5947eebe22ebbad9c59e245dd847bd7637c26a5d8a379ddde35f3dd5d3"

      def install
        bin.install "cywagon"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/cywagon/releases/download/v0.0.5/cywagon_0.0.5_darwin_arm64.tar.gz"
      sha256 "6245b824437ebb3f34dd2320d4deeaa9872eb747f1235cb6fdf1d54c4840352b"

      def install
        bin.install "cywagon"
      end
    end
  end
end
