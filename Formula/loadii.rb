class Loadii < Formula
  desc ""
  homepage ""
  version "v0.0.12"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/loadii/releases/download/v0.0.12/loadii_0.0.12_darwin_amd64.tar.gz"
      sha256 "b40b481a1ebab75d40d6a46389cf454b8a46486583a8521b861ede09c8c26f8d"

      def install
        bin.install "loadii"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/loadii/releases/download/v0.0.12/loadii_0.0.12_darwin_arm64.tar.gz"
      sha256 "5e6c6e36e36ecf30a8e8acad38af5c56d20e6f9eb02b37db3c8a429d2e4bae56"

      def install
        bin.install "loadii"
      end
    end
  end
end
