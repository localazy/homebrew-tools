class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.7.9.tar.gz"
  sha256 "99a2e406e0c064833ec8d9818f14fd71322a07d22e2f803b6463506064bacfbb"
  depends_on "curl"

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
