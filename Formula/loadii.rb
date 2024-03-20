class Loadii < Formula
  desc ""
  homepage ""
  version "v0.0.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/loadii/releases/download/v0.0.3/loadii_0.0.3_darwin_amd64.tar.gz"
      sha256 "81db6d9c01c29f4a0d83e087dcd2e7d5d37a53c272f91cdbad292a59c22e597d"

      def install
        bin.install "loadii"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/loadii/releases/download/v0.0.3/loadii_0.0.3_darwin_arm64.tar.gz"
      sha256 "366a79775bf4b6a0fa1d26c534a2591d34d4113681517c77894960471de464b2"

      def install
        bin.install "loadii"
      end
    end
  end
end
