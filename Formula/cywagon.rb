class Cywagon < Formula
  desc ""
  homepage ""
  version "v0.0.5"

  on_macos do
    if Hardware::CPU.intel?
      url ""
      sha256 ""

      def install
        bin.install "cywagon"
      end
    end

    if Hardware::CPU.arm?
      url ""
      sha256 ""

      def install
        bin.install "cywagon"
      end
    end
  end
end
