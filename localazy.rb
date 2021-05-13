class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.4.2.tar.gz"
  sha256 "7ec4ede56f78138bfd7873364df2ac370ea2004e0d782aacfc651b9f121d6ecd"
  depends_on "curl"

  bottle :unneeded

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
