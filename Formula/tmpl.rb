class Tmpl < Formula
  desc ""
  homepage ""
  version "v2026.10.31"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/my-template-apps/releases/download/v2026.10.31/tmpl-v2026.10.31-aarch64-apple-darwin.tar.gz"
      sha256 "e60f370562438460b8cef7bc3980227c03b4672e44b2adba56ec27b36043ec0f"

      def install
        bin.install "tmpl"
      end
    end
  end
end
