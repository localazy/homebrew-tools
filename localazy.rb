class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.1.11.tar.gz"
  sha256 "5d714a4a9752e316b84fe7e8ce3ecf13aeac2b47238b37b0d85cd392c54862fe"
  depends_on "curl"

  bottle :unneeded

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
