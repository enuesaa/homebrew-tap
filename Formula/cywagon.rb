class Cywagon < Formula
  desc ""
  homepage ""
  version "v0.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/cywagon/releases/download/v0.0.1/cywagon_0.0.1_darwin_amd64.tar.gz"
      sha256 "62751f2d0b0328d703c1ecd7422ac618bb7f82a861796e075fbe049f172db671"

      def install
        bin.install "cywagon"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/cywagon/releases/download/v0.0.1/cywagon_0.0.1_darwin_arm64.tar.gz"
      sha256 "255a640506b2e07fdde8bfe4a89c61094d3c7235a5296624a731f6bcbf966443"

      def install
        bin.install "cywagon"
      end
    end
  end
end
