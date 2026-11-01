class Tmpl < Formula
  desc ""
  homepage ""
  version "v2026.11.01"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/my-template-apps/releases/download/v2026.11.01/tmpl-v2026.11.01-aarch64-apple-darwin.tar.gz"
      sha256 "925254f8dd9fdc80c23b05192d7e998fb867edc5e10a50dda2a4ca1b4898b105"

      def install
        bin.install "tmpl"
      end
    end
  end
end
