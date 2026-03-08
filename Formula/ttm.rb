class Ttm < Formula
  desc ""
  homepage ""
  version "v0.0.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.7/ttm-v0.0.7-x86_64-apple-darwin.tar.gz"
      sha256 "6de187f48aa890a05c59147b88deeea431e055d7bf9626ad2d0935c1f8c5fc96"

      def install
        bin.install "ttm"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.7/ttm-v0.0.7-aarch64-apple-darwin.tar.gz"
      sha256 "de0d5162cfb461d1b00826cc01ce080ad9b766ce8a33d1e82a3ab99236482444"

      def install
        bin.install "ttm"
      end
    end
  end
end
