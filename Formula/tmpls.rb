class Tmpls < Formula
  desc ""
  homepage ""
  version "v0.0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/my-templates/releases/download/v0.0.5/tmpls-v0.0.5-aarch64-apple-darwin.tar.gz"
      sha256 "a9ec05c6ebb2d6e3fdab4f6fba01fe4a919cd5a6acf2a4a1d413b7b9cd2c25bf"

      def install
        bin.install "tmpls"
      end
    end
  end
end
