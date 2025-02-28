class Localazy < Formula
  desc "CLI tool for the Localazy platform"
  homepage "https://localazy.com"

  if Hardware::CPU.arm?
    url "https://dist.localazy.com/macosArm64/macos-v2.0.4.tar.gz"
    sha256 "3dfaa75fb9e4839f37c02a3a1a743394269f35f7e2babb6a3c58a9b7d8c0b461"
  elsif Hardware::CPU.intel?
    url "https://dist.localazy.com/macos/macos-v2.0.4.tar.gz"
    sha256 "237a695bf0a43b4898ab4c6bc4410f47be479ca3ded7765d97ac73cf503f3efa"
  end

  depends_on "curl"

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
