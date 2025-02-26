class Cpbuf < Formula
  desc ""
  homepage ""
  version "v0.0.18"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/cpbuf/releases/download/v0.0.18/cpbuf_0.0.18_darwin_amd64.tar.gz"
      sha256 "e4650d557fa91d7ea1f64bc92272b87f51366d21a03bf0cdb4ae4221a867eef2"

      def install
        bin.install "cpbuf"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/cpbuf/releases/download/v0.0.18/cpbuf_0.0.18_darwin_arm64.tar.gz"
      sha256 "4f037156bb044ad8de84f476b27fb59a951ac9b173404942bcb687736bea4343"

      def install
        bin.install "cpbuf"
      end
    end
  end
end
