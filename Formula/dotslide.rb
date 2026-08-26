class Dotslide < Formula
  desc ""
  homepage ""
  version "v0.0.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/dotslide/releases/download/v0.0.7/dotslide_0.0.7_darwin_amd64.tar.gz"
      sha256 "a1cfa404903456b91a97435e6f2a2d94e99299aceba409d58b516881d409617f"

      def install
        bin.install "dotslide"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/dotslide/releases/download/v0.0.7/dotslide_0.0.7_darwin_arm64.tar.gz"
      sha256 "9932dbec35703db0dd874cdd3d564e737ff0da484d0dff6b7db7c562f51a5a69"

      def install
        bin.install "dotslide"
      end
    end
  end
end
