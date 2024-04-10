class Loadii < Formula
  desc ""
  homepage ""
  version "v0.0.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/loadii/releases/download/v0.0.6/loadii_0.0.6_darwin_amd64.tar.gz"
      sha256 "54345631104c4e3a73c733132dba0151aee9c77d74144059c3ad4301d1d92dc1"

      def install
        bin.install "loadii"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/loadii/releases/download/v0.0.6/loadii_0.0.6_darwin_arm64.tar.gz"
      sha256 "c843d1bb9bb5feee2ba683d969c7a0fdd405047f70df61c94731298456ac1a2c"

      def install
        bin.install "loadii"
      end
    end
  end
end
