class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.7.8.tar.gz"
  sha256 "e39ed24f488cac32cc15787c6b31174608b96515f0924ab07f388f3a3efd1e74"
  depends_on "curl"

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
