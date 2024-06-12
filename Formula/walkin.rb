class Walkin < Formula
  desc ""
  homepage ""
  version "v0.0.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/walkin/releases/download/v0.0.6/walkin_0.0.6_darwin_amd64.tar.gz"
      sha256 "3409a89ca612e56676af67b71d364a58ab9f77a52850f7369f419781e785fcdd"

      def install
        bin.install "walkin"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/walkin/releases/download/v0.0.6/walkin_0.0.6_darwin_arm64.tar.gz"
      sha256 "8c667b7d07c231d0626c20d3315b8722a2b8e50accd0c7e4554779768a37d251"

      def install
        bin.install "walkin"
      end
    end
  end
end
