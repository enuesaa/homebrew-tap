class Cywagon < Formula
  desc ""
  homepage ""
  version "v0.0.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enuesaa/cywagon/releases/download/v0.0.4/cywagon_0.0.4_darwin_amd64.tar.gz"
      sha256 "c93c4e74b725fce9b26471322d432f957f4919b63c2eb007a7515ba9ff27ed56"

      def install
        bin.install "cywagon"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/enuesaa/cywagon/releases/download/v0.0.4/cywagon_0.0.4_darwin_arm64.tar.gz"
      sha256 "8bb26a066a049422dbec3d0c7a30ebdb6018003bb3334b8fa74ad63bd56a4635"

      def install
        bin.install "cywagon"
      end
    end
  end
end
