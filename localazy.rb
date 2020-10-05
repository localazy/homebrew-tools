class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.1.5.tar.gz"
  sha256 "f1b464eb29e12c8d184cee27d6a414513313a0c9e910d4ff967c1319c2928b16"
  depends_on "curl"

  bottle :unneeded

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
