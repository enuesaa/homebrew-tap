class Imgpack < Formula
  desc ""
  homepage ""
  version "v0.1.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/imgpack/releases/download/v0.1.7/imgpack-v0.1.7-x86_64-apple-darwin.tar.gz"
      sha256 "a4fcd6468b35dfc1722feaf780e952bf15537bab8d8dfb495f6671adf2279fed"

      def install
        bin.install "imgpack"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/imgpack/releases/download/v0.1.7/imgpack-v0.1.7-aarch64-apple-darwin.tar.gz"
      sha256 "9e6415a6bec849e537ca88bf1ca9cc508bfb5591cacd9a554acbead5126f6a4d"

      def install
        bin.install "imgpack"
      end
    end
  end
end
