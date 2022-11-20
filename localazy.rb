class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.6.5.tar.gz"
  sha256 "9dfd49cfa6e7876a80fd86f565690904d69c23a9232f0820a085c79813b7c3ce"
  depends_on "curl"

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
