class Cywagon < Formula
  desc ""
  homepage ""
  version "v0.0.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/cywagon/releases/download/v0.0.3/cywagon_0.0.3_darwin_amd64.tar.gz"
      sha256 "d3e29e2c879027c9ff9446963a87753aeb4a1cceeed4016ec8d281d702215467"

      def install
        bin.install "cywagon"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/cywagon/releases/download/v0.0.3/cywagon_0.0.3_darwin_arm64.tar.gz"
      sha256 "a5e18186ddfd14d3f843879533fde79ff7b93e136e33a4eeff7e2076d03267c7"

      def install
        bin.install "cywagon"
      end
    end
  end
end
