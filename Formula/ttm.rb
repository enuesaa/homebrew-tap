class Ttm < Formula
  desc ""
  homepage ""
  version "v0.0.13"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.13/ttm-v0.0.13-x86_64-apple-darwin.tar.gz"
      sha256 "b157f26cb98847235d6f40da59f2f5c73128930576b637cca250f04d0daf7fe8"

      def install
        bin.install "ttm"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.13/ttm-v0.0.13-aarch64-apple-darwin.tar.gz"
      sha256 "cbdf512c3424c3446feb7675e08d8b31a5a4f5e32adf16bcee8f84922e5774fa"

      def install
        bin.install "ttm"
      end
    end
  end
end
