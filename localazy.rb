class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.2.3.tar.gz"
  sha256 "1e6f20dd32d036854f8d31d9b76d46a42ff6c18607f8c1d36ccb82d47e7c4ef0"
  depends_on "curl"

  bottle :unneeded

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
