class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.0.3.tar.gz"
  sha256 "2420eb5414e431a1f56186f6c7e6476ba2a8fce6ba90f1c114550fe3c37c6d29
  depends_on "curl"

  bottle :unneeded

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
