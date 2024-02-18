class Difii < Formula
  desc ""
  homepage ""
  version "v0.0.13"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/difii/releases/download/v0.0.13/difii_0.0.13_darwin_amd64.tar.gz"
      sha256 "7af5e4ca03326ad3fa4c1981aa7cbe015e44cc2263dd2a5f226e13dd5dc53062"

      def install
        bin.install "difii"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/difii/releases/download/v0.0.13/difii_0.0.13_darwin_arm64.tar.gz"
      sha256 "4eff36dcf97a640691bd28e0b157b2fb6d4787891dba49844b4bbde5d330bf9a"

      def install
        bin.install "difii"
      end
    end
  end
end
