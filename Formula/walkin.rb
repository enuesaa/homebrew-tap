class Walkin < Formula
  desc ""
  homepage ""
  version "v0.0.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/walkhttp/releases/download/v0.0.8/walkhttp_0.0.8_darwin_amd64.tar.gz"
      sha256 "0b821c1b9126f8593ff2e00ef71baf59bb6dea34f4b3f49a519a3758bffcf4c9"

      def install
        bin.install "walkin"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/walkhttp/releases/download/v0.0.8/walkhttp_0.0.8_darwin_arm64.tar.gz"
      sha256 "9487ce535176de2e2ffee8fbd2808d8e203e66e32aa95a165b523c6893fd3dcd"

      def install
        bin.install "walkin"
      end
    end
  end
end
