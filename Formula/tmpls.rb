class Tmpls < Formula
  homepage "https://github.com/enuesaa/tmpls"
  url "https://github.com/enuesaa/tmpls/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "5409755432465bc89622b2f89d3c9a696732c3461844d5d4aafc959d60bbefbe"

  def install
    libexec.install "tmpls.rb"
    (bin/"tmpls").write <<~EOS
      #!/bin/sh
      exec ruby "#{libexec}/tmpls.rb" "$@"
    EOS
    chmod 0755, bin/"tmpls"
  end
end
