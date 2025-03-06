class Localazy < Formula
  desc "CLI tool for the Localazy platform"
  homepage "https://localazy.com"

  if Hardware::CPU.arm?
    url "https://dist.localazy.com/macosArm64/macos-v2.0.6.tar.gz"
    sha256 "d1a707cff2314a9a1a0ce3a64638c3048a072190fc194710d529ff16ba0c44c3"
  elsif Hardware::CPU.intel?
    url "https://dist.localazy.com/macos/macos-v2.0.6.tar.gz"
    sha256 ""
  end

  depends_on "curl"

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
