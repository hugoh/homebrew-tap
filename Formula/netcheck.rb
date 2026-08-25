class Netcheck < Formula
  desc "Holistic view of macOS network status: interfaces, VPN, DNS, reachability"
  homepage "https://github.com/hugoh/netcheck"
  url "https://github.com/hugoh/netcheck/releases/download/v0.5.0/netcheck-0.5.0-aarch64-apple-darwin.tar.gz"
  sha256 "f2e4d29c5cf8add174867e9af9a4955eb4ff6c7e28f66352b171527b2ac348b8"
  version "0.5.0"

  livecheck do
    skip "Auto-generated on release."
  end

  def install
    bin.install "netcheck"
  end
end
