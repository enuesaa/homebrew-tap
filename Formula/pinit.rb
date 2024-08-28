class Pinit < Formula
  desc ""
  homepage ""
  version "v0.0.11"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/pinit/releases/download/v0.0.11/pinit_0.0.11_darwin_amd64.tar.gz"
      sha256 "0889f382ce827ad528ec2d90ce43ca9808a93ffbdc7bf18efeb067c9872049bc"

      def install
        bin.install "pinit"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/pinit/releases/download/v0.0.11/pinit_0.0.11_darwin_arm64.tar.gz"
      sha256 "b4da1e20e39df6aae6514514e77eeb31498651f1f0cdc3ec23b7ee0429390e6d"

      def install
        bin.install "pinit"
      end
    end
  end
end
