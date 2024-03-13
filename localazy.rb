class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.7.6.tar.gz"
  sha256 "2268b3cece6cdea56b71df9aaa448eda75dad697c9252928720f2f2fa46b4fa0"
  depends_on "curl"

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
