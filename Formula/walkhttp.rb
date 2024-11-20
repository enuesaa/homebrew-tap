class Walkhttp < Formula
  desc ""
  homepage ""
  version "v0.0.10"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/walkhttp/releases/download/v0.0.10/walkhttp_0.0.10_darwin_amd64.tar.gz"
      sha256 "bb62f63b704e9a3cdf5106efdaf5f35980357a3cec3d8b8944fc6aead18fcedf"

      def install
        bin.install "walkhttp"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/walkhttp/releases/download/v0.0.10/walkhttp_0.0.10_darwin_arm64.tar.gz"
      sha256 "00d8132ede1c552ad6123c9bc70b53af721897dc24676f4c19a0c7aac18dc534"

      def install
        bin.install "walkhttp"
      end
    end
  end
end
