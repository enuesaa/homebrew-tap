class Cywagon < Formula
  desc ""
  homepage ""
  version "v0.0.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/cywagon/releases/download/v0.0.2/cywagon_0.0.2_darwin_amd64.tar.gz"
      sha256 "9f1cf58794d92a3339ad3c8a69e35cc97d3e7cda0df0cdcc84a1b0bc52ce827f"

      def install
        bin.install "cywagon"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/cywagon/releases/download/v0.0.2/cywagon_0.0.2_darwin_arm64.tar.gz"
      sha256 "1acd4768ccb4c8c4d8b0be7a8b40715f500574f5fe64dfbd30652efce23a5037"

      def install
        bin.install "cywagon"
      end
    end
  end
end
