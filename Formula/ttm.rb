class Ttm < Formula
  desc ""
  homepage ""
  version "v0.0.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.2/wtmp-v0.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "9608dae90e85e282d7a78e874fa1b1f0a5ae6c22fe8e12accbe7af91c6cb5850"

      def install
        bin.install "ttm"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.2/wtmp-v0.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "8eb50e6701ceb62fdd6bff420a440f7c3bd0384233270dfec5ba153842d6ec70"

      def install
        bin.install "ttm"
      end
    end
  end
end
