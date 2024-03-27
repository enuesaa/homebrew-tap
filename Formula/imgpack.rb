class Imgpack < Formula
  desc ""
  homepage ""
  version "v0.0.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/imgpack/releases/download/v0.0.4/imgpack_0.0.4_darwin_amd64.tar.gz"
      sha256 "7c7055efd4d763c53c3608b747ca73ead8d2d517b4ba044d93c365522c79fdb1"

      def install
        bin.install "imgpack"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/imgpack/releases/download/v0.0.4/imgpack_0.0.4_darwin_arm64.tar.gz"
      sha256 "ab93a457ad2d6f7dddfc2a8a3c80f0e21496a6b60367909462f5ad1e7b142499"

      def install
        bin.install "imgpack"
      end
    end
  end
end
