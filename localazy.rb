class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.6.3.tar.gz"
  sha256 "18a86ffbdb8730a9d6a7f87c65d518f1e2ca45f39fee45052a5d62a6c5eee36b"
  depends_on "curl"

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
