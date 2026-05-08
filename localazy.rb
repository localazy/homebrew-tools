class Localazy < Formula
  desc "CLI tool for the Localazy platform"
  homepage "https://localazy.com"

  if Hardware::CPU.arm?
    url "https://dist.localazy.com/macosArm64/macos-v2.0.10.tar.gz"
    sha256 "cb2eda3d5a263a72583c3a18d784143b677c8bc3a6efe3ff9d23d63e897e181a"
  elsif Hardware::CPU.intel?
    url "https://dist.localazy.com/macos/macos-v2.0.10.tar.gz"
    sha256 "891cd317976e441dfad0274deb20a11646f3f732116b7434754cf1b4798a5d20"
  end

  depends_on "curl"

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
