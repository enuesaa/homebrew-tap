class Tmpl < Formula
  desc ""
  homepage ""
  version "v2026.11.22"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/my-template-apps/releases/download/v2026.11.22/tmpl-v2026.11.22-x86_64-apple-darwin.tar.gz"
      sha256 "50fd3259af908216ed032ab8087a2cd94c1746deddb19cfec0ab7ed90e2ae426"

      def install
        bin.install "tmpl"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/my-template-apps/releases/download/v2026.11.22/tmpl-v2026.11.22-aarch64-apple-darwin.tar.gz"
      sha256 "76d0ee3222f96129eed46093be1e25825609c31e0e989639069254c511477cf6"

      def install
        bin.install "tmpl"
      end
    end
  end
end
