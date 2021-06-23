class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.4.7.tar.gz"
  sha256 "7f9861af13c51a116f24fb726a2833cf07b1ec318220b04ec49577ef8aee388c"
  depends_on "curl"

  bottle :unneeded

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
