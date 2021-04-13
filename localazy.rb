class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.3.1.tar.gz"
  sha256 "6f561ef9d7ab24daf4312d692fb228f7057f0e8d39caf521e49b7ea1aa3ba5c9"
  depends_on "curl"

  bottle :unneeded

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
