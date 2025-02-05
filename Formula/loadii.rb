class Loadii < Formula
  desc ""
  homepage ""
  version "v0.0.10"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/loadii/releases/download/v0.0.10/loadii_0.0.10_darwin_amd64.tar.gz"
      sha256 "204a4c6be16f5bfbb240f69228d32ed0f4de909a70a5199832325ac4b44ae30c"

      def install
        bin.install "loadii"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/loadii/releases/download/v0.0.10/loadii_0.0.10_darwin_arm64.tar.gz"
      sha256 "9af9a65f56887fcdaec21a32fdaa49c4bb97b579dea4e13f9a8e9d3503a48012"

      def install
        bin.install "loadii"
      end
    end
  end
end
