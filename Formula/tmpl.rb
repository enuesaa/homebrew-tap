class Tmpl < Formula
  desc ""
  homepage ""
  version "v2026.11.08"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/my-template-apps/releases/download/v2026.11.08/tmpl-v2026.11.08-x86_64-apple-darwin.tar.gz"
      sha256 "f97ee99090bfc03480d076310505f412ed3821e8791279e22e3febf48fe84f66"

      def install
        bin.install "tmpl"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/my-template-apps/releases/download/v2026.11.08/tmpl-v2026.11.08-aarch64-apple-darwin.tar.gz"
      sha256 "f74e71e2ba8291305e1a54fe0eea09764dddd7683368381773e5d9a71116b2ac"

      def install
        bin.install "tmpl"
      end
    end
  end
end
