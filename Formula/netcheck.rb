class Netcheck < Formula
  desc "Holistic view of macOS network status: interfaces, VPN, DNS, reachability"
  homepage "https://github.com/hugoh/netcheck"
  url "https://github.com/hugoh/netcheck/releases/download/v0.2.2/netcheck-0.2.2-aarch64-apple-darwin.tar.gz"
  sha256 "3e8dff8bc90723721fd39044c683261075e0bb1f1401d8b79056a4d29bf2b5fe"
  version "0.2.2"

  livecheck do
    skip "Auto-generated on release."
  end

  def install
    bin.install "netcheck"
    bin.install "netcheck-tui"
    bin.install "netcheck-gui"
  end
end
