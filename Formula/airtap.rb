class Airtap < Formula
  desc "Stream one Mac app's audio to an AirPlay 2 speaker"
  homepage "https://github.com/hugoh/airtap"
  url "https://github.com/hugoh/airtap/releases/download/v0.5.0/airtap-0.5.0-aarch64-apple-darwin.tar.gz"
  sha256 "e1360276144c173e96b7bba3f836923054d26b7aa27bcf6df06485f986982478"
  version "0.5.0"

  livecheck do
    skip "Auto-generated on release."
  end

  def install
    bin.install "airtap"
  end
end
