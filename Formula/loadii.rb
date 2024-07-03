class Loadii < Formula
  desc ""
  homepage ""
  version "v0.0.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/loadii/releases/download/v0.0.7/loadii_0.0.7_darwin_amd64.tar.gz"
      sha256 "48543d0cbc00930870c850a029c574cc948f5ae16dbf8d8f240070d083a8f404"

      def install
        bin.install "loadii"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/loadii/releases/download/v0.0.7/loadii_0.0.7_darwin_arm64.tar.gz"
      sha256 "99747b187d5f949853c2967f45c431a86d4f1cf7427de62afec5b0c43c93aec6"

      def install
        bin.install "loadii"
      end
    end
  end
end
