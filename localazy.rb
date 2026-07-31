class Localazy < Formula
  desc "CLI tool for the Localazy platform"
  homepage "https://localazy.com"

  if Hardware::CPU.arm?
    url "https://dist.localazy.com/macosArm64/macos-v2.0.12.tar.gz"
    sha256 "1f2dc0ce75bdcc078c55a04bf5435eeedc0404125b9cff72c5452eb520655ae9"
  elsif Hardware::CPU.intel?
    url "https://dist.localazy.com/macos/macos-v2.0.12.tar.gz"
    sha256 "d6d0266d94d3ccddbe1ccb483d6a7cbe09e5f82b9668bb9b8a916f93933fb9a5"
  end

  depends_on "curl"

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
