class Cpbuf < Formula
  desc ""
  homepage ""
  version "v0.0.23"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/cpbuf/releases/download/v0.0.23/cpbuf_0.0.23_darwin_amd64.tar.gz"
      sha256 "ed8e50d6451ec6f302f00491338d85ac70ba96436af2ab7005c32d478102fb34"

      def install
        bin.install "cpbuf"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/cpbuf/releases/download/v0.0.23/cpbuf_0.0.23_darwin_arm64.tar.gz"
      sha256 "8d25baafb634b2e407cf6b1837dab6c23c81e1c3e1152d729fb8215d87c00590"

      def install
        bin.install "cpbuf"
      end
    end
  end
end
