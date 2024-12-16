class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.7.15.tar.gz"
  sha256 "a7e8106b31d96dbcde0e7b6da759ed75128488d11e2d01ebdec89210803d047c"
  depends_on "curl"

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
