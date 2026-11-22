class Airtap < Formula
  desc "Stream one Mac app's audio to an AirPlay 2 speaker"
  homepage "https://github.com/hugoh/airtap"
  url "https://github.com/hugoh/airtap/releases/download/v0.4.0/airtap-0.4.0-aarch64-apple-darwin.tar.gz"
  sha256 "5b7223ef6a4882612cb406872be93baea560c3ced3b8477d044c0d39ce8e6f3f"
  version "0.4.0"

  livecheck do
    skip "Auto-generated on release."
  end

  def install
    bin.install "airtap"
  end
end
