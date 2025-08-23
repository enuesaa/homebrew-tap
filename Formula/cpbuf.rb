class Cpbuf < Formula
  desc ""
  homepage ""
  version "v0.0.19"

  on_macos do
    if Hardware::CPU.intel?
      url ""
      sha256 ""

      def install
        bin.install "cpbuf"
      end
    end

    if Hardware::CPU.arm?
      url ""
      sha256 ""

      def install
        bin.install "cpbuf"
      end
    end
  end
end
