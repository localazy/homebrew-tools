class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.1.16.tar.gz"
  sha256 "9644e1a30800a3975c2c470412f79f4db9b9afd4316d3ecdc6064359d029ee3c"
  depends_on "curl"

  bottle :unneeded

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
