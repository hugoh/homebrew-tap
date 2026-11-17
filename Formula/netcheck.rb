class Netcheck < Formula
  desc "Holistic view of macOS network status: interfaces, VPN, DNS, reachability"
  homepage "https://github.com/hugoh/netcheck"
  url "https://github.com/hugoh/netcheck/releases/download/v0.8.0/netcheck-0.8.0-aarch64-apple-darwin.tar.gz"
  sha256 "2d54812c88b560788512d6bd09cf39e34339b1dc38c3149b0fd4617702057d7d"
  version "0.8.0"

  livecheck do
    skip "Auto-generated on release."
  end

  def install
    bin.install "netcheck"
  end
end
