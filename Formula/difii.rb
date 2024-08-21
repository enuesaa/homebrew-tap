class Difii < Formula
  desc ""
  homepage ""
  version "v0.0.14"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/difii/releases/download/v0.0.14/difii_0.0.14_darwin_amd64.tar.gz"
      sha256 "352cb7cbdf48d521e5f5ab712582284d4db22d964030c86de9bee53f7dcfb9ad"

      def install
        bin.install "difii"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/difii/releases/download/v0.0.14/difii_0.0.14_darwin_arm64.tar.gz"
      sha256 "bcd92c9b549e296dffadd0feca8e7bd843c83c90f8a4c83d5bfaa16ad0802add"

      def install
        bin.install "difii"
      end
    end
  end
end
