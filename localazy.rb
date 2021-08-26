class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.5.0.tar.gz"
  sha256 "5bf5aecf935fa334a67ed71927d6a7abc8c5b7f4a3e8d3b56da086c58686d0e1"
  depends_on "curl"

  bottle :unneeded

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
