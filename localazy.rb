class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.4.3.tar.gz"
  sha256 "fda56eaa5b3355ab22156f334fa01fc59f9895f3dd738f3bf2506b8f6ce7b916"
  depends_on "curl"

  bottle :unneeded

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
