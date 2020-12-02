class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.2.0.tar.gz"
  sha256 "44bacc2aab3bd4efb8850863eb0e5c1ce5e611f9efe45785280d1c7a36f53f5d"
  depends_on "curl"

  bottle :unneeded

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
