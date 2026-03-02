class Ttm < Formula
  desc ""
  homepage ""
  version "v0.0.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.6/ttm-v0.0.6-x86_64-apple-darwin.tar.gz"
      sha256 "d8b5c9d8dbd3293b79b4c8f9163cb869d1358f16c9bfd8eca6a4e439761755d6"

      def install
        bin.install "ttm"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.6/ttm-v0.0.6-aarch64-apple-darwin.tar.gz"
      sha256 "965283b85899b0ec6dc7559c65fec158f0afd1ca8274310e37b5fbdb35e02c1d"

      def install
        bin.install "ttm"
      end
    end
  end
end
