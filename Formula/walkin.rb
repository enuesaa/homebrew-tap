class Walkin < Formula
  desc ""
  homepage ""
  version "v0.0.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/walkin/releases/download/v0.0.5/walkin_0.0.5_darwin_amd64.tar.gz"
      sha256 "69b5b564f3bb115bae024e8010b9f462b5b6b46acdea9a5ae09bcf5477a2edca"

      def install
        bin.install "walkin"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/walkin/releases/download/v0.0.5/walkin_0.0.5_darwin_arm64.tar.gz"
      sha256 "f99dac88536e2b6d08660ff521260c26b77eb250e08fcc1c8a92c4d054d65527"

      def install
        bin.install "walkin"
      end
    end
  end
end
