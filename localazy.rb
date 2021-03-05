class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.2.4.tar.gz"
  sha256 "c8c9a61a57c4e7a1703e4bdb4725ab79c8e152ed19819532fdc6a1adeaf51c20"
  depends_on "curl"

  bottle :unneeded

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
