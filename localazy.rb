class Localazy < Formula
  desc "CLI tool for the Localazy platform"
  homepage "https://localazy.com"

  if Hardware::CPU.arm?
    url "https://dist.localazy.com/macosArm64/macos-v2.0.3.tar.gz"
    sha256 "b11f530cc6e1744ef2424a5137fbdd802c5986e237f5a488cef84ce0372dd6b7"
  elsif Hardware::CPU.intel?
    url "https://dist.localazy.com/macos/macos-v2.0.3.tar.gz"
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
