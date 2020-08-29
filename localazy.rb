class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.1.2.tar.gz"
  sha256 "7e80a072970aa1cf96e9997e7e75b6980ad493e14a1c38af7511b918dba0e1a0"
  depends_on "curl"

  bottle :unneeded

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
