class Difii < Formula
  desc ""
  homepage ""
  version "v0.0.16"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/difii/releases/download/v0.0.16/difii_0.0.16_darwin_amd64.tar.gz"
      sha256 "daff6c274d7adcb1e54af4b75e881045befc38f7605c0259ab0f3ec2b30db091"

      def install
        bin.install "difii"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/difii/releases/download/v0.0.16/difii_0.0.16_darwin_arm64.tar.gz"
      sha256 "86f38a13f6bfd5670f92f0c747688a4b4022d25f831bd1c0a5e35842b8d2ad6e"

      def install
        bin.install "difii"
      end
    end
  end
end
