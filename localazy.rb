class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.7.5.tar.gz"
  sha256 "06cdcaa87093ebcc3b0baeb186e6f6d03f4cff14f6667b089ae6c55c7a685836"
  depends_on "curl"

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
