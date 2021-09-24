class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.6.0.tar.gz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  depends_on "curl"

  bottle :unneeded

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
