class Cpbuf < Formula
  desc ""
  homepage ""
  version "v0.0.21"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/cpbuf/releases/download/v0.0.21/cpbuf_0.0.21_darwin_amd64.tar.gz"
      sha256 "ed6d94ca3bee8391e91708e77be3ee09fed5c2430d9ffd673ae0ee2ef1f145ac"

      def install
        bin.install "cpbuf"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/cpbuf/releases/download/v0.0.21/cpbuf_0.0.21_darwin_arm64.tar.gz"
      sha256 "9cd54951ffea3281de59f669c354e338946d8b9ade3bafe0e50ec581eee1682c"

      def install
        bin.install "cpbuf"
      end
    end
  end
end
