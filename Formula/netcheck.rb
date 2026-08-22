class Netcheck < Formula
  desc "Holistic view of macOS network status: interfaces, VPN, DNS, reachability"
  homepage "https://github.com/hugoh/netcheck"
  url "https://github.com/hugoh/netcheck/releases/download/v0.2.3/netcheck-0.2.3-aarch64-apple-darwin.tar.gz"
  sha256 "e158466224a2fac1692aca22950418a3a2f6fc355d5d97a3e58652c87c8bca45"
  version "0.2.3"

  livecheck do
    skip "Auto-generated on release."
  end

  def install
    bin.install "netcheck"
    bin.install "netcheck-tui"
    bin.install "netcheck-gui"
  end
end
