class Localazy < Formula
  desc "CLI tool for the Localazy platform"
  homepage "https://localazy.com"

  if Hardware::CPU.arm?
    url "https://dist.localazy.com/macosArm64/macos-v2.0.2.tar.gz"
    sha256 "ee7c81827b30084b0bcde3a73967c8dbbe982a34d0a52a1802de61e90f4d2710"
  elsif Hardware::CPU.intel?
    url "https://dist.localazy.com/macos/macos-v2.0.2.tar.gz"
    sha256 "a2cc2ad0a709bd4ed7e5b550d6b2b92a4a932962d175f055b5f37aee67f7cbd2"
  end

  depends_on "curl"

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
