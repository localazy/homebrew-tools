class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.7.10.tar.gz"
  sha256 "8630e283bab2bae2ed7e4558563d0758bcfd2852331c8364f46a37af4aa47af3"
  depends_on "curl"

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
