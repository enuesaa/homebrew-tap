class Difii < Formula
  desc ""
  homepage ""
  version "v0.0.15"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/difii/releases/download/v0.0.15/difii_0.0.15_darwin_amd64.tar.gz"
      sha256 "30e15cb24b0cd140b491a600790994769318c18fdc4d58ae42ef6e76d50ea509"

      def install
        bin.install "difii"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/difii/releases/download/v0.0.15/difii_0.0.15_darwin_arm64.tar.gz"
      sha256 "4effa5d906a68024c2f16d1f3be0c6a5ffcbb31a833576a268f7de7fe45a0682"

      def install
        bin.install "difii"
      end
    end
  end
end
