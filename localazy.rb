class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.2.2.tar.gz"
  sha256 "aede3b453d454d459bc8fec25c86ea25382f7320f7741fb88a2994f0398dfc73"
  depends_on "curl"

  bottle :unneeded

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
