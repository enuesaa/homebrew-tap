class Dotslide < Formula
  desc ""
  homepage ""
  version "v0.0.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/dotslide/releases/download/v0.0.6/dotslide_0.0.6_darwin_amd64.tar.gz"
      sha256 "d400341b9ab5e3e1ecda8df41a003cf5d7eb2b3676e49cc7428d9c603d2f5321"

      def install
        bin.install "dotslide"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/dotslide/releases/download/v0.0.6/dotslide_0.0.6_darwin_arm64.tar.gz"
      sha256 "a0f32c12dafde5713497f4ae6db2575936a700af5ce080c56cb0a83da185f10f"

      def install
        bin.install "dotslide"
      end
    end
  end
end
