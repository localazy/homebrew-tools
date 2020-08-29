class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.1.0.tar.gz"
  sha256 "9bdda03ab53c83a3ac6281d7c867236555236b1efd96e0ce35b23103b7a0f394"
  depends_on "curl"

  bottle :unneeded

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
