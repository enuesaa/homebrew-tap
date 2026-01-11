class Loadii < Formula
  desc ""
  homepage ""
  version "v0.0.11"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/loadii/releases/download/v0.0.11/loadii_0.0.11_darwin_amd64.tar.gz"
      sha256 "7d803fab103fd1205ed02530b56758ef3fb94a73f1560693e9a0586c53529369"

      def install
        bin.install "loadii"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/loadii/releases/download/v0.0.11/loadii_0.0.11_darwin_arm64.tar.gz"
      sha256 "51fc946c487e18dc665c7a2a2b3a000b12e01986f535bcd95cadb1457de34eba"

      def install
        bin.install "loadii"
      end
    end
  end
end
