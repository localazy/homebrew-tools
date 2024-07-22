class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.7.12.tar.gz"
  sha256 "0181da66e5b671ba443667f4accd0c559da55960e05229b920e7547ff0576db8"
  depends_on "curl"

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
