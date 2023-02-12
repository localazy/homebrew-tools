class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.7.0.tar.gz"
  sha256 "4eea0d3556f7524047e2fa97c935834251f1134b2fdeb43b9442c9ff7a91c600"
  depends_on "curl"

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
