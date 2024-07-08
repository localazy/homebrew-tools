class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.7.11.tar.gz"
  sha256 "03d3d3ff4572641c4e82909a0bc17552bf81c4787331b269b22d06430e8d7f0d"
  depends_on "curl"

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
