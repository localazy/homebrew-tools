class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.5.2.tar.gz"
  sha256 "d999a58b5c838bf40f3378b4cfca4506af15cd59e1c06f15db4c007f4ee19047"
  depends_on "curl"

  bottle :unneeded

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
