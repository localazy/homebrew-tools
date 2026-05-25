class Localazy < Formula
  desc "CLI tool for the Localazy platform"
  homepage "https://localazy.com"

  if Hardware::CPU.arm?
    url "https://dist.localazy.com/macosArm64/macos-v2.0.11.tar.gz"
    sha256 "d2d7e288c3368c5b7cfbf7b696197934c8adf2a499a188481241d016a073ed61"
  elsif Hardware::CPU.intel?
    url "https://dist.localazy.com/macos/macos-v2.0.11.tar.gz"
    sha256 "2c1c47406c17a7f24079bb90640726454af8389b1852f8cea3957e09160103a6"
  end

  depends_on "curl"

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
