class Netcheck < Formula
  desc "Holistic view of macOS network status: interfaces, VPN, DNS, reachability"
  homepage "https://github.com/hugoh/netcheck"
  url "https://github.com/hugoh/netcheck/releases/download/v0.4.0/netcheck-0.4.0-aarch64-apple-darwin.tar.gz"
  sha256 "e064a307ef1e670e7e6e9bf51f921f731894f08a9f21bcdcbcbbf3f5b512edb3"
  version "0.4.0"

  livecheck do
    skip "Auto-generated on release."
  end

  def install
    bin.install "netcheck"
  end
end
