class Imgpack < Formula
  desc ""
  homepage ""
  version "v0.1.1"

  on_macos do
    if Hardware::CPU.intel?
      url ""
      sha256 ""

      def install
        bin.install "imgpack"
      end
    end

    if Hardware::CPU.arm?
      url ""
      sha256 ""

      def install
        bin.install "imgpack"
      end
    end
  end
end
