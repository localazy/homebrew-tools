class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.4.0.tar.gz"
  sha256 "4f3a87adf6c2428e39df7429ef070e6af193f466a4abb6620792ea1e9b5f8503"
  depends_on "curl"

  bottle :unneeded

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
