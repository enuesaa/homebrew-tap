class Walkin < Formula
  desc ""
  homepage ""
  version "v0.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/walkin/releases/download/v0.0.1/walkin_0.0.1_darwin_amd64.tar.gz"
      sha256 "b519f696bce883747763f5c6e9b8756781a9fa9dc1415e7dd973e68fe0ce6a6d"

      def install
        bin.install "walkin"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/walkin/releases/download/v0.0.1/walkin_0.0.1_darwin_arm64.tar.gz"
      sha256 "1f816ef373ef256b52755595cc9eeb1f0a80397288190637fd08bde3da28a6b1"

      def install
        bin.install "walkin"
      end
    end
  end
end
