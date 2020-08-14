class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.0.2.tar.gz"
  sha256 "b475dfc57d7f5d38c621ce2a78601e8caa19ed6d25f1082aa2a67a4f486300e6"
  depends_on "curl"

  bottle :unneeded

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
