class Loadii < Formula
  desc ""
  homepage ""
  version "v0.0.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/loadii/releases/download/v0.0.5/loadii_0.0.5_darwin_amd64.tar.gz"
      sha256 "b6c3a7fe871fede4fdd8712a47000684a1ff6bd3ef7db4a38dd0f3efe3c897fc"

      def install
        bin.install "loadii"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/loadii/releases/download/v0.0.5/loadii_0.0.5_darwin_arm64.tar.gz"
      sha256 "df8d05b07115583b85d1f5658145c25c2d8a799995b4aa745543b8ba05ba1be1"

      def install
        bin.install "loadii"
      end
    end
  end
end
