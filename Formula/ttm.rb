class Ttm < Formula
  desc ""
  homepage ""
  version "v0.0.17"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.17/ttm-v0.0.17-x86_64-apple-darwin.tar.gz"
      sha256 "b19d1a2977dedd293792e4ad6be1ef6f5f4ef281b25319d30367b4fa2f381b59"

      def install
        bin.install "ttm"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.17/ttm-v0.0.17-aarch64-apple-darwin.tar.gz"
      sha256 "e7a3f2059a75d0faab1b533a39eafcffb6454d045aafc19a9f9afae4bf414cf7"

      def install
        bin.install "ttm"
      end
    end
  end
end
