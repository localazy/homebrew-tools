class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.6.6.tar.gz"
  sha256 "da81fd922d871ffb26261982ab7192fd6d7c552ab914330f382f1b27332a8efe"
  depends_on "curl"

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
