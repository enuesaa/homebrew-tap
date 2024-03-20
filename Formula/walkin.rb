class Walkin < Formula
  desc ""
  homepage ""
  version "v0.0.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/walkin/releases/download/v0.0.2/walkin_0.0.2_darwin_amd64.tar.gz"
      sha256 "0ab60a17a71c4c35880f3ca6e615944657ff4c084d7946dc3bb05ad3c53a8b35"

      def install
        bin.install "walkin"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/walkin/releases/download/v0.0.2/walkin_0.0.2_darwin_arm64.tar.gz"
      sha256 "481f31123b495458e603e56fe241ce406f0c4f7ac5513d9aa6b9e0f81e2fef26"

      def install
        bin.install "walkin"
      end
    end
  end
end
