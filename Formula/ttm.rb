class Ttm < Formula
  desc ""
  homepage ""
  version "v0.0.10"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.10/ttm-v0.0.10-x86_64-apple-darwin.tar.gz"
      sha256 "fa3870d158ae8abcfb47681f653983bcffb9c2e2fdadcf691e0c0f66ff7c5b56"

      def install
        bin.install "ttm"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.10/ttm-v0.0.10-aarch64-apple-darwin.tar.gz"
      sha256 "bba0d2cb94fbf047e7fe4b8f8e58f2c000bd29b11ecdb3d9e6fe5db6ca2782c4"

      def install
        bin.install "ttm"
      end
    end
  end
end
