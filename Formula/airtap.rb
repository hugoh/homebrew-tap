class Airtap < Formula
  desc "Stream one Mac app's audio to an AirPlay 2 speaker"
  homepage "https://github.com/hugoh/airtap"
  url "https://github.com/hugoh/airtap/releases/download/v0.1.0/airtap-0.1.0-aarch64-apple-darwin.tar.gz"
  sha256 "fa0bca1808039eba5f3bae092768561b85e128766e09d50dee5e48d9060886eb"
  version "0.1.0"

  livecheck do
    skip "Auto-generated on release."
  end

  def install
    bin.install "airtap"
  end
end
