class Ttm < Formula
  desc ""
  homepage ""
  version "v0.0.22"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.22/ttm-v0.0.22-x86_64-apple-darwin.tar.gz"
      sha256 "449eb775d48a374d383c96ca6f8f94f4c2454a540b73ec65499da028c4c58704"

      def install
        bin.install "ttm"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.22/ttm-v0.0.22-aarch64-apple-darwin.tar.gz"
      sha256 "701d24f9e0d941647f5d5789fff3c0d86cb5bb5c2dbb2f9ca37ff099aeddd008"

      def install
        bin.install "ttm"
      end
    end
  end
end
