class Cpbuf < Formula
  desc ""
  homepage ""
  version "v0.0.19"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/cpbuf/releases/download/v0.0.19/cpbuf_0.0.19_darwin_amd64.tar.gz"
      sha256 "fe9bec25b3600921d980f432d195988d141a900baf261e92a91de1cbc80cbf56"

      def install
        bin.install "cpbuf"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/cpbuf/releases/download/v0.0.19/cpbuf_0.0.19_darwin_arm64.tar.gz"
      sha256 "b9dd53cff628c8bf7e9d7dbc237d9dd4c9d51e696660d026f3a4c26c23177687"

      def install
        bin.install "cpbuf"
      end
    end
  end
end
