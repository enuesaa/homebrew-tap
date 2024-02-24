class Tryserve < Formula
  desc ""
  homepage ""
  version "v0.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/tryserve/releases/download/v0.0.1/tryserve_0.0.1_darwin_amd64.tar.gz"
      sha256 "f8d88819f95473bce9843620a9952c424c428ac89894d8ff4f93684f106af7bd"

      def install
        bin.install "tryserve"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/tryserve/releases/download/v0.0.1/tryserve_0.0.1_darwin_arm64.tar.gz"
      sha256 "ca2b06a6c2d371c2f61d3509f6c80323bc8deb6a8f0ca910868edaca1ea9c925"

      def install
        bin.install "tryserve"
      end
    end
  end
end
