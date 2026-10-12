class Ttm < Formula
  desc ""
  homepage ""
  version "v0.0.20"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.20/ttm-v0.0.20-x86_64-apple-darwin.tar.gz"
      sha256 "37e181a0f3f29828b3452900bab8ac118c39e7c343aa73e03f82572aa94750f7"

      def install
        bin.install "ttm"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.20/ttm-v0.0.20-aarch64-apple-darwin.tar.gz"
      sha256 "9c05a84fbf161e5213eb503c2a585bac6585d818392bbeb8b4d0efc3c3d8d2b3"

      def install
        bin.install "ttm"
      end
    end
  end
end
