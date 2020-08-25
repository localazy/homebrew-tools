class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.0.8.tar.gz"
  sha256 "d45078cc333dbd6a73ae6774c73da33aaa6b365a61d8fd5db63cfc929de83bca"
  depends_on "curl"

  bottle :unneeded

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
