class Airtap < Formula
  desc "Stream one Mac app's audio to an AirPlay 2 speaker"
  homepage "https://github.com/hugoh/airtap"
  url "https://github.com/hugoh/airtap/releases/download/v0.2.0/airtap-0.2.0-aarch64-apple-darwin.tar.gz"
  sha256 "38db934f6d300efbb8ecb3066cbfc111b3990c66360ff504417c49c2c2e9b2b7"
  version "0.2.0"

  livecheck do
    skip "Auto-generated on release."
  end

  def install
    bin.install "airtap"
  end
end
