class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.7.13.tar.gz"
  sha256 "3db148d1793408e6644ae56c38b9022aef03e5a35376c11c4ca29da68e7435ee"
  depends_on "curl"

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
