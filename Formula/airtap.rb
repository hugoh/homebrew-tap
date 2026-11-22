class Airtap < Formula
  desc "Stream one Mac app's audio to an AirPlay 2 speaker"
  homepage "https://github.com/hugoh/airtap"
  url "https://github.com/hugoh/airtap/releases/download/v0.3.0/airtap-0.3.0-aarch64-apple-darwin.tar.gz"
  sha256 "94a534e74dd2c17b0051a00de80ebfdea578110692b7886b2f2832bcd1835ca4"
  version "0.3.0"

  livecheck do
    skip "Auto-generated on release."
  end

  def install
    bin.install "airtap"
  end
end
