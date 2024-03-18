class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.7.7.tar.gz"
  sha256 "ef332a02526821fbb57eb07ef1b2c4c92c1cd576a0f6951290cfd2b0fe36056a"
  depends_on "curl"

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
