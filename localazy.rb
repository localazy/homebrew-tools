class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.7.2.tar.gz"
  sha256 "f32981288aa7afe53fd33f3ac93ce8317b0a32c87684191e30aa2bc06156679b"
  depends_on "curl"

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
