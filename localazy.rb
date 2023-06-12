class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.7.3.tar.gz"
  sha256 "b24bf9fb75e47ee820c2ac984a28af60b7ef14fc65c2be34d6fe72394fff095d"
  depends_on "curl"

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
