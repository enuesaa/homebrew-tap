class Tmpl < Formula
  desc ""
  homepage ""
  version "v2026.11.01"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/my-template-apps/releases/download/v2026.11.01/tmpl-v2026.11.01-x86_64-apple-darwin.tar.gz"
      sha256 "2ff7dec4f47140d8341e2bff8bdef65e6a9f1eaa3fbe68ee413b37cdff7bb1c2"

      def install
        bin.install "tmpl"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/my-template-apps/releases/download/v2026.11.01/tmpl-v2026.11.01-aarch64-apple-darwin.tar.gz"
      sha256 "8607438d1b09f6ca8e7159bf11a750eed8b83d6b9d1290750b92f9510d2f6f75"

      def install
        bin.install "tmpl"
      end
    end
  end
end
