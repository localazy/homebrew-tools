class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.6.8.tar.gz"
  sha256 "fdab215819dd281e0615b9700ec736d3417791d27cd3dd1398d7940cbf5ed59c"
  depends_on "curl"

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
