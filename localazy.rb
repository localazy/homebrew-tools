class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-V1.0.7.tar.gz"
  sha256 "e0368912fdec00aa0785c71af7ff71747d469196cd15c355c3ff27e1a987aa55"
  depends_on "curl"

  bottle :unneeded

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
