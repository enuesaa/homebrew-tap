class Ttm < Formula
  desc ""
  homepage ""
  version "v0.0.12"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.12/ttm-v0.0.12-x86_64-apple-darwin.tar.gz"
      sha256 "e7efea3932b935deb785f7f1a20f481cd0df162766461a45d4d243d3ec380d94"

      def install
        bin.install "ttm"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.12/ttm-v0.0.12-aarch64-apple-darwin.tar.gz"
      sha256 "f18e1a1905789bcd4ca00146211d1f4b6337fc5ae6e4677d13221bd1b1cfba33"

      def install
        bin.install "ttm"
      end
    end
  end
end
