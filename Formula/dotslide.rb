class Dotslide < Formula
  desc ""
  homepage ""
  version "v0.0.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/dotslide/releases/download/v0.0.7/dotslide_0.0.7_darwin_amd64.tar.gz"
      sha256 "b3cf3ec5e75bb913c91b14604722b303f93d1d6f00f6a0de579f456cf5b95b41"

      def install
        bin.install "dotslide"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/dotslide/releases/download/v0.0.7/dotslide_0.0.7_darwin_arm64.tar.gz"
      sha256 "90118e5e9089d66d325a496387e2e2c200ce77139ac00fb4178a6d2bbaffbac1"

      def install
        bin.install "dotslide"
      end
    end
  end
end
