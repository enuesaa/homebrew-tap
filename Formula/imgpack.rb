class Imgpack < Formula
  desc ""
  homepage ""
  version "v0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/imgpack/releases/download/v0.1.0/imgpack-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "42a8863e93f76794faf651dfc724ebbe40585fe8b895f5c5f95ae2d1039f07fd"

      def install
        bin.install "imgpack"
      end
    end
  end
end
