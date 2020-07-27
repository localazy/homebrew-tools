class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-1.0.0.tar.gz"
  sha256 "2d9542722921178280f1d5e23a2243a748ea480bdf4a0e05766aa7f210ec26ae"
  depends_on "curl"

  bottle :unneeded

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
