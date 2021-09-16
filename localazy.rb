class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.5.3.tar.gz"
  sha256 "7a5b13616986c094421f943836bd78a6d7e04181c0b62019ca9f262e6b44b95b"
  depends_on "curl"

  bottle :unneeded

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
