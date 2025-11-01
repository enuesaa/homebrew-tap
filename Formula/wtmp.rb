class Wtmp < Formula
  desc ""
  homepage ""
  version "v0.0.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/wtmp/releases/download/v0.0.2/dist/wtmp-v0.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "122c3d8f7c1de0bd41fc361c65dd2e5167b2884585318289c8555e6897b3fc00"

      def install
        bin.install "wtmp"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/wtmp/releases/download/v0.0.2/dist/wtmp-v0.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "bafddf1f766af5ebed1bbb198d880def4aad759cbbf1bea72805c4c66fc3995a"

      def install
        bin.install "wtmp"
      end
    end
  end
end
