class Pinit < Formula
  desc ""
  homepage ""
  version "0.0.7"

  on_macos do
    if Hardware::CPU.intel?
      url "pinit_0.0.7_darwin_amd64.tar.gz"
      sha256 "aaa80f227cb24dd0ceb2226506a7747dccff384a0927d31e093e73f355fff975"

      def install
        bin.install "pinit"
      end
    end
    if Hardware::CPU.arm?
      url "pinit_0.0.7_darwin_arm64.tar.gz"
      sha256 "2636247602d5ed6c2a8bf22b0ccfae4763ef7d15a12e7cb0c718374ac9e04346"

      def install
        bin.install "pinit"
      end
    end
  end
end
