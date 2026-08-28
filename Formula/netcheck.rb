class Netcheck < Formula
  desc "Holistic view of macOS network status: interfaces, VPN, DNS, reachability"
  homepage "https://github.com/hugoh/netcheck"
  url "https://github.com/hugoh/netcheck/releases/download/v0.7.0/netcheck-0.7.0-aarch64-apple-darwin.tar.gz"
  sha256 "4d952e1d89629d2f3416ade975771fb451ba0e63874abeefb0bde4e0f13099e8"
  version "0.7.0"

  livecheck do
    skip "Auto-generated on release."
  end

  def install
    bin.install "netcheck"
  end
end
