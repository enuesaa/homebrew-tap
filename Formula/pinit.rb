class Pinit < Formula
  desc ""
  homepage ""
  version "v0.0.12"

  on_macos do
    if Hardware::CPU.intel?
      url ""
      sha256 ""

      def install
        bin.install "pinit"
      end
    end

    if Hardware::CPU.arm?
      url ""
      sha256 ""

      def install
        bin.install "pinit"
      end
    end
  end
end
