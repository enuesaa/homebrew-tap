class Imgpack < Formula
  desc ""
  homepage ""
  version "v0.1.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/imgpack/releases/download/v0.1.4/imgpack-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "d23e3919811b10e16d960aca6a6e1d594ef7acec2fe43a401a2371c11489732a"

      def install
        bin.install "imgpack"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/imgpack/releases/download/v0.1.4/imgpack-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "460d11c1728c549cf5f24fa17ffc794c42bca2cc3413b260cc8a5c7f300ff141"

      def install
        bin.install "imgpack"
      end
    end
  end
end
