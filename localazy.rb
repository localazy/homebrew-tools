class Localazy < Formula
  desc "CLI tool for the Localazy platform"
  homepage "https://localazy.com"

  if Hardware::CPU.arm?
    url "https://dist.localazy.com/macosArm64/macos-v2.0.7.tar.gz"
    sha256 "518de27ccb004fdc55e3538d1bf64595252cdbf5cf044009873b2fbd06a32395"
  elsif Hardware::CPU.intel?
    url "https://dist.localazy.com/macos/macos-v2.0.7.tar.gz"
    sha256 "0bb6a26a84d789b52abd48a2e49346e7fd32d4d9cb05224defba92db567aecf8"
  end

  depends_on "curl"

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
