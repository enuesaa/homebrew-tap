class Craf < Formula
  desc ""
  homepage ""
  version "v0.2.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/craf/releases/download/v0.2.1/craf-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "1e12d844990715426b6012d104451f7c464847daae3e687f508fcdbefae95308"

      def install
        bin.install "craf"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/craf/releases/download/v0.2.1/craf-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "f5f4d8f1fb0c44af72d57abe910edcb6ac7be61c1fa12004b3fa987e48faa592"

      def install
        bin.install "craf"
      end
    end
  end
end
