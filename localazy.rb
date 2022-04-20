class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.6.1.tar.gz"
  sha256 "2239045805c57fa401711c4ca51b9d5ac41357c8c3ad1ab6f5294879bf1698a5"
  depends_on "curl"

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
