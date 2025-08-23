class Walkhttp < Formula
  desc ""
  homepage ""
  version "v0.0.13"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/walkhttp/releases/download/v0.0.13/walkhttp_0.0.13_darwin_amd64.tar.gz"
      sha256 "767e9573697a8b6403b6f088b94e5e53af13242492faaa296747ce32ef46ec85"

      def install
        bin.install "walkhttp"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/walkhttp/releases/download/v0.0.13/walkhttp_0.0.13_darwin_arm64.tar.gz"
      sha256 "128bacc2c7cc05b87605ec858edbabd5650b196e81281d322ec134b3874cc784"

      def install
        bin.install "walkhttp"
      end
    end
  end
end
