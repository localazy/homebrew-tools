class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.6.2.tar.gz"
  sha256 "606d5325022f7a93b52bfd6bfe8fd28144327c0836b728ef929f4880f4ab0922"
  depends_on "curl"

  bottle :unneeded

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
