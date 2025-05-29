class Localazy < Formula
  desc "CLI tool for the Localazy platform"
  homepage "https://localazy.com"

  if Hardware::CPU.arm?
    url "https://dist.localazy.com/macosArm64/macos-v2.0.8.tar.gz"
    sha256 "6ef38c9cd51ed8605de5e6cf3eb705e2b6da274c570f04aa49a7ab50901f4080"
  elsif Hardware::CPU.intel?
    url "https://dist.localazy.com/macos/macos-v2.0.8.tar.gz"
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
