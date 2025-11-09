class Ttm < Formula
  desc ""
  homepage ""
  version "v0.0.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.3/ttm-v0.0.3-x86_64-apple-darwin.tar.gz"
      sha256 "c3241075c3fa2effc1a0354a68a4e4e196bd6fdf023110c196b174f30764b9df"

      def install
        bin.install "ttm"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.3/ttm-v0.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "690adc6075b8103cace79db5482089ca828bc039a3a91c5588229cc8183caecf"

      def install
        bin.install "ttm"
      end
    end
  end
end
