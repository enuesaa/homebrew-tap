class Loadii < Formula
  desc ""
  homepage ""
  version "v0.0.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/loadii/releases/download/v0.0.4/loadii_0.0.4_darwin_amd64.tar.gz"
      sha256 "59a1344422061a39cd81477e8c0c38b23b650192c74730e7c3ad1cfc2bc5ca16"

      def install
        bin.install "loadii"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/loadii/releases/download/v0.0.4/loadii_0.0.4_darwin_arm64.tar.gz"
      sha256 "4aebd2fce5556bbfbeedd435fff7032fd82a6580ae02840619365deba1474a8e"

      def install
        bin.install "loadii"
      end
    end
  end
end
