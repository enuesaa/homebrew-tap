class Pinit < Formula
  desc ""
  homepage ""
  version "0.0.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/pinit/releases/download/v0.0.7/pinit_0.0.7_darwin_amd64.tar.gz"
      sha256 "aaa80f227cb24dd0ceb2226506a7747dccff384a0927d31e093e73f355fff975"

      def install
        bin.install "pinit"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/pinit/releases/download/v0.0.7/pinit_0.0.7_darwin_arm64.tar.gz"
      sha256 "2636247602d5ed6c2a8bf22b0ccfae4763ef7d15a12e7cb0c718374ac9e04346"

      def install
        bin.install "pinit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/enuesaa/pinit/releases/download/v0.0.7/pinit_0.0.7_linux_arm64.tar.gz"
      sha256 "d5aa27728d80b38044a67e3e3df2df66b2c1e6db21dbf4f1a58598847164ee0e"

      def install
        bin.install "pinit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/pinit/releases/download/v0.0.7/pinit_0.0.7_linux_amd64.tar.gz"
      sha256 "a3ac7dcc914ba9387829c6901a2693bf23b46bbd9bb0b0651de80b66b714ad65"

      def install
        bin.install "pinit"
      end
    end
  end
end
