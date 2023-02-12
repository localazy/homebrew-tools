class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.7.1.tar.gz"
  sha256 "93a3f95285fa523372c6d5eb60f6c3f126321f899a7e82cec425b29f7e20d29e"
  depends_on "curl"

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
