class Walkin < Formula
  desc ""
  homepage ""
  version "v0.0.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/walkhttp/releases/download/v0.0.9/walkhttp_0.0.9_darwin_amd64.tar.gz"
      sha256 "8fd044e950a3b0bb90dd57d85bbd404ee22662d4ba8b66816e9e0ad6d98f0b8f"

      def install
        bin.install "walkin"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/walkhttp/releases/download/v0.0.9/walkhttp_0.0.9_darwin_arm64.tar.gz"
      sha256 "4f1ec8deccc85d70624a793f10dc913e2cdaf8e820d0f7c271f561d4e489217f"

      def install
        bin.install "walkin"
      end
    end
  end
end
