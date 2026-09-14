class Ttm < Formula
  desc ""
  homepage ""
  version "v0.0.18"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.18/ttm-v0.0.18-x86_64-apple-darwin.tar.gz"
      sha256 "868411c4f407fdb45fc42549178552d71f1b3b06160ef3929dd7cdd33c62b6b0"

      def install
        bin.install "ttm"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.18/ttm-v0.0.18-aarch64-apple-darwin.tar.gz"
      sha256 "49739d125b5428eb68e565124d5fea68294c1736ef0a322d97632ba6aa6ccf48"

      def install
        bin.install "ttm"
      end
    end
  end
end
