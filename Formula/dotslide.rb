class Dotslide < Formula
  desc ""
  homepage ""
  version "v0.0.5"

  on_macos do
    if Hardware::CPU.intel?
      url ""
      sha256 ""

      def install
        bin.install "dotslide"
      end
    end

    if Hardware::CPU.arm?
      url ""
      sha256 ""

      def install
        bin.install "dotslide"
      end
    end
  end
end
