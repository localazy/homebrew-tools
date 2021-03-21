class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.3.0.tar.gz"
  sha256 "003d1a463e84e6c65d399b7502b3f5c2eda643a0a53e5dc37dc9ae62bcb74b02"
  depends_on "curl"

  bottle :unneeded

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
