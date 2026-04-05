class Ttm < Formula
  desc ""
  homepage ""
  version "v0.0.11"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.11/ttm-v0.0.11-x86_64-apple-darwin.tar.gz"
      sha256 "110749e996d3a1188be4e35d1cd423f9e1cbb7e618c5c3c12529c4f4abbc90b2"

      def install
        bin.install "ttm"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.11/ttm-v0.0.11-aarch64-apple-darwin.tar.gz"
      sha256 "7962a8676cb4bef6908e2ec97781a45d3a852afc2f2177d68c91a3cb2e8aace1"

      def install
        bin.install "ttm"
      end
    end
  end
end
