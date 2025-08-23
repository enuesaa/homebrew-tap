class Difii < Formula
  desc ""
  homepage ""
  version "v0.0.15"

  on_macos do
    if Hardware::CPU.intel?
      url ""
      sha256 ""

      def install
        bin.install "difii"
      end
    end

    if Hardware::CPU.arm?
      url ""
      sha256 ""

      def install
        bin.install "difii"
      end
    end
  end
end
