class Ttm < Formula
  desc ""
  homepage ""
  version "v0.0.16"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.16/ttm-v0.0.16-x86_64-apple-darwin.tar.gz"
      sha256 "72e5762049fc0e1cd6dd3f70d0e0f9610dea64b3b549cba41d581ffe0356af64"

      def install
        bin.install "ttm"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.16/ttm-v0.0.16-aarch64-apple-darwin.tar.gz"
      sha256 "cba677924944c8ce8598eec2a191784377ce93a7516077407e0d22ec3f01e261"

      def install
        bin.install "ttm"
      end
    end
  end
end
