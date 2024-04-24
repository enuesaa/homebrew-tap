class Walkin < Formula
  desc ""
  homepage ""
  version "v0.0.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/walkin/releases/download/v0.0.4/walkin_0.0.4_darwin_amd64.tar.gz"
      sha256 "e3842c76abd390702117da004011179db81dac09ad40e808d1e89b844a8f37d0"

      def install
        bin.install "walkin"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/walkin/releases/download/v0.0.4/walkin_0.0.4_darwin_arm64.tar.gz"
      sha256 "c20b6241b81a3812d1d92e64228f12f6e92ff7dfed2c327fba0c87835d0197f5"

      def install
        bin.install "walkin"
      end
    end
  end
end
