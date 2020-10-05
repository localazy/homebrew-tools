class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.1.8.tar.gz"
  sha256 "939d6e8a698624cfc03e061f430c1d0ac6dbd08fa16105421b77e5d9fc4e0e8e"
  depends_on "curl"

  bottle :unneeded

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
