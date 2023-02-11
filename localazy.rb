class Localazy < Formula
  desc "CLI tool for Localazy platform"
  homepage "https://localazy.com"
  url "https://dist.localazy.com/macos/macos-v1.6.9.tar.gz"
  sha256 "75b037ca1bb29ee41ec0c771072b69edbf3e2799d3ab03bad6d14fcda5e851cd"
  depends_on "curl"

  def install
    bin.install "localazy"
  end

  test do
    system "#{bin}/localazy", "-h"
  end
end
