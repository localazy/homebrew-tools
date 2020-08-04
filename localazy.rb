class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-1.0.0.tar.gz"
  sha256 "f2fe9304f976e2359745ff2560ca1e7f35026a4422cf9284243bee25412823d3"
  depends_on "curl"

  bottle :unneeded

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
