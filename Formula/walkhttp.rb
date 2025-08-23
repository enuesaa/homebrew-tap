class Walkhttp < Formula
  desc ""
  homepage ""
  version "v0.0.13"

  on_macos do
    if Hardware::CPU.intel?
      url ""
      sha256 ""

      def install
        bin.install "walkhttp"
      end
    end

    if Hardware::CPU.arm?
      url ""
      sha256 ""

      def install
        bin.install "walkhttp"
      end
    end
  end
end
