class Ttm < Formula
  desc ""
  homepage ""
  version "v0.0.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.5/ttm-v0.0.5-x86_64-apple-darwin.tar.gz"
      sha256 "650c77738cf6b7c2372c88033d5137e10849b93915f05c7f0dd962ee7a6d945c"

      def install
        bin.install "ttm"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.5/ttm-v0.0.5-aarch64-apple-darwin.tar.gz"
      sha256 "be4611bd6976d0e41e2d10488ab82e221c187c5dabcabaa809a413bb31eee16f"

      def install
        bin.install "ttm"
      end
    end
  end
end
