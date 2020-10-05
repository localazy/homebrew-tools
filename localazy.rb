class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.1.4.tar.gz"
  sha256 "57cb12e8da40600f1ddd9cbd26975b70bdfe17cf3428f520ad7751f365d9eac5"
  depends_on "curl"

  bottle :unneeded

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
