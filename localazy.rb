class Localazy < Formula
  desc "CLI tool for the Localazy platform"
  homepage "https://localazy.com"

  if Hardware::CPU.arm?
    url "https://dist.localazy.com/macosArm64/macos-v2.0.0.tar.gz"
    sha256 "4dbec09d4777866ef5d6f8b0110a6b3a0fb73aab01c49a3979bb1a5caff99e90"
  elsif Hardware::CPU.intel?
    url "https://dist.localazy.com/macos/macos-v2.0.0.tar.gz"
    sha256 ""
  end

  depends_on "curl"

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
