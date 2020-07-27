class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v0.9.0-beta.1.tar.gz"
  sha256 "40502061a611435773e1043e639dbe3f3ba5cacaafd75af9561d9910d97978b7"

  bottle :unneeded

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end