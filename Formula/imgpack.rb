class Imgpack < Formula
  desc ""
  homepage ""
  version "v0.0.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/imgpack/releases/download/v0.0.5/imgpack_0.0.5_darwin_amd64.tar.gz"
      sha256 "d7f78d14799301784f047bf6308eef0750975cbee9c394680f9682fa08396456"

      def install
        bin.install "imgpack"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/imgpack/releases/download/v0.0.5/imgpack_0.0.5_darwin_arm64.tar.gz"
      sha256 "31973b7d3ae27c317e371f2fb000ccda2537c1d3ae1258198fbd65c08395e64a"

      def install
        bin.install "imgpack"
      end
    end
  end
end
