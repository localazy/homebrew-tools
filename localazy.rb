class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.6.0.tar.gz"
  sha256 "d406430740e250be3d27f65108f60490abd454fb4b2479b8ad09b84adf3fb4b2"
  depends_on "curl"

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
