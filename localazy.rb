class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.0.7.tar.gz"
  sha256 "3724325d678d9f0bb4163dc4d122ca381ab9e9d88452ce3bd709dd4c6ac5b92d"
  depends_on "curl"

  bottle :unneeded

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
