class Loadii < Formula
  desc ""
  homepage ""
  version "v0.0.10"

  on_macos do
    if Hardware::CPU.intel?
      url ""
      sha256 ""

      def install
        bin.install "loadii"
      end
    end

    if Hardware::CPU.arm?
      url ""
      sha256 ""

      def install
        bin.install "loadii"
      end
    end
  end
end
