class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.7.14.tar.gz"
  sha256 "4183cdd32a3d6e0cdde7dbbc4cf2460ef0185713b566915367e9c3dee547a5c7"
  depends_on "curl"

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
