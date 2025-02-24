class Localazy < Formula
  desc "CLI tool for the Localazy platform"
  homepage "https://localazy.com"

  if Hardware::CPU.arm?
    url "https://dist.localazy.com/macosArm64/macos-v2.0.1.tar.gz"
    sha256 "d3c01fe07ce1b90bcb9fd4b798ca7036eadaace445143a3617132b05e1cbdb61"
  elsif Hardware::CPU.intel?
    url "https://dist.localazy.com/macos/macos-v2.0.1.tar.gz"
    sha256 "91dca50fbe063b23abce990ac95229a013f423943452cdd97d4951dfc0150e45"
  end

  depends_on "curl"

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
