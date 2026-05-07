class Ttm < Formula
  desc ""
  homepage ""
  version "v0.0.15"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.15/ttm-v0.0.15-x86_64-apple-darwin.tar.gz"
      sha256 "4291178dacbdcfdb5e2d017ff93c0a44cbb413a897f5fb576a01439721980fc8"

      def install
        bin.install "ttm"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.15/ttm-v0.0.15-aarch64-apple-darwin.tar.gz"
      sha256 "dc7c664818afeab966490e6817670f8d04d3385c49d06450109e6a93d4e122cf"

      def install
        bin.install "ttm"
      end
    end
  end
end
