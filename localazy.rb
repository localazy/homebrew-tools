class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.7.4.tar.gz"
  sha256 "e857dc6dccf4b51c8e9b6bc7763e722836930f8cab95d43f90e3f95b48a38af7"
  depends_on "curl"

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
