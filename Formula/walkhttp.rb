class Walkhttp < Formula
  desc ""
  homepage ""
  version "v0.0.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/walkhttp/releases/download/v0.0.7/walkin_0.0.7_darwin_amd64.tar.gz"
      sha256 "b19a05835f800e3bbf15ce500c5464e4b7c796ab6df6def2b34376902f207134"

      def install
        bin.install "walkhttp"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/walkhttp/releases/download/v0.0.7/walkin_0.0.7_darwin_arm64.tar.gz"
      sha256 "c022bdacda02417e246ffc6d9a0d5a6454c8f9eed494ce6e5a9c94859607e586"

      def install
        bin.install "walkhttp"
      end
    end
  end
end
