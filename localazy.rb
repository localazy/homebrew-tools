class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.6.4.tar.gz"
  sha256 "fe7ee37e003f3b3fd61d6b7df0169d6a522d47c7227424c39fc7958847ec9294"
  depends_on "curl"

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
