class Imgpack < Formula
  desc ""
  homepage ""
  version "v0.1.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/imgpack/releases/download/v0.1.6/imgpack-v0.1.6-x86_64-apple-darwin.tar.gz"
      sha256 "cb81f4ee777fbee749b5b4040edbced948da8807cf200c830521aa7bab5c4b74"

      def install
        bin.install "imgpack"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/imgpack/releases/download/v0.1.6/imgpack-v0.1.6-aarch64-apple-darwin.tar.gz"
      sha256 "67e9fdfdb478ea226dd2d889f11f4fdd306eb1b08e5a173ffbc99ca442078dc5"

      def install
        bin.install "imgpack"
      end
    end
  end
end
