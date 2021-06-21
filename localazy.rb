class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.4.6.tar.gz"
  sha256 "6beaa986a5589c2d9ecf02fdbb217db2058b0eb05a690c2e28780169a2f0fd65"
  depends_on "curl"

  bottle :unneeded

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
