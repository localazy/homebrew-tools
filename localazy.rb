class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.1.14.tar.gz"
  sha256 "6e6afb40d5e7693d9913dc5f9e15c24c74c566cddbc4db27fb23f4d710729e14"
  depends_on "curl"

  bottle :unneeded

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
