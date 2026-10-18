class Tmpls < Formula
  homepage "https://github.com/enuesaa/tmpls"
  url "https://github.com/enuesaa/tmpls/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "5409755432465bc89622b2f89d3c9a696732c3461844d5d4aafc959d60bbefbe"
  depends_on "ruby"

  def install
    libexec.install "tmpls.rb"
    (bin/"tmpls").write_env_script libexec/"tmpls.rb",
      PATH: "#{Formula["ruby"].opt_bin}:$PATH"
  end
end
