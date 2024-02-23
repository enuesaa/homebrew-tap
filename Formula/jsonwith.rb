class Jsonwith < Formula
  desc ""
  homepage ""
  version "v0.0.11"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/jsonwith/releases/download/v0.0.11/jsonwith-v0.0.11-x86_64-apple-darwin.tar.gz"
      sha256 "4ebee1546eed8749eedb8842a089f631429afb8d1d2d8b42cc50cc260008f5cc"

      def install
        bin.install "jsonwith"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/jsonwith/releases/download/v0.0.11/jsonwith-v0.0.11-aarch64-apple-darwin.tar.gz"
      sha256 "7b76ac11b47b0698b48adf2f7f015259d299435e2a53b14ae6643dec2eb816c6"

      def install
        bin.install "jsonwith"
      end
    end
  end
end
