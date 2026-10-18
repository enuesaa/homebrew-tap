class Tmpls < Formula
  homepage "https://github.com/enuesaa/tmpls"
  url "https://github.com/enuesaa/tmpls/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "REPLACE_AFTER_FIRST_RELEASE"
  depends_on "ruby"

  def install
    libexec.install "tmpls.rb"
    (bin/"tmpls").write_env_script libexec/"tmpls.rb",
      PATH: "#{Formula["ruby"].opt_bin}:$PATH"
  end
end
