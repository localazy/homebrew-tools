class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.2.1.tar.gz"
  sha256 "ff3809e6bcd66e38b4805427230065c6d52b55d8eb117a53806cdffeac0c3d09"
  depends_on "curl"

  bottle :unneeded

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
