class Localazy < Formula
  desc "CLI tool for the Localazy platform"
  homepage "https://localazy.com"

  if Hardware::CPU.arm?
    url "https://dist.localazy.com/macosArm64/macos-v2.0.9.tar.gz"
    sha256 "57e043e98af426d9f343664406c4a2846408541318346a9dee2b21434d9af343"
  elsif Hardware::CPU.intel?
    url "https://dist.localazy.com/macos/macos-v2.0.9.tar.gz"
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
