class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.0.9.tar.gz"
  sha256 "f7d1b57eba780d56c1e551a8287e822b43b055b2d0512fe333f4f526aa5ae6e5"
  depends_on "curl"

  bottle :unneeded

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
