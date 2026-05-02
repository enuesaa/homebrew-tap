class Ttm < Formula
  desc ""
  homepage ""
  version "v0.0.14"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.14/ttm-v0.0.14-x86_64-apple-darwin.tar.gz"
      sha256 "e8156ce29bf28c950128984b76fd95e56568cc692aa73283a48d84a5ac25ace6"

      def install
        bin.install "ttm"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/ttm/releases/download/v0.0.14/ttm-v0.0.14-aarch64-apple-darwin.tar.gz"
      sha256 "cf15aa440f3382e66411f1eb8895b4082abb95a9db3d9689f5ec12b06c92c7e7"

      def install
        bin.install "ttm"
      end
    end
  end
end
