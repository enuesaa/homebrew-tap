macamd64url = "pinit_0.0.7_darwin_amd64.tar.gz"
macamd64sha256 = "aaa80f227cb24dd0ceb2226506a7747dccff384a0927d31e093e73f355fff975"
macarm64url = "pinit_0.0.7_darwin_arm64.tar.gz"
macarm64sha256 = "2636247602d5ed6c2a8bf22b0ccfae4763ef7d15a12e7cb0c718374ac9e04346"

class Pinit < Formula
  desc ""
  homepage ""
  version "0.0.7"

  on_macos do
    if Hardware::CPU.intel?
      url macamd64url
      sha256 macamd64sha256

      def install
        bin.install "pinit"
      end
    end
    if Hardware::CPU.arm?
      url macarm64url
      sha256 macarm64sha256

      def install
        bin.install "pinit"
      end
    end
  end
end
