class Netcheck < Formula
  desc "Holistic view of macOS network status: interfaces, VPN, DNS, reachability"
  homepage "https://github.com/hugoh/netcheck"
  url "https://github.com/hugoh/netcheck/releases/download/v0.7.2/netcheck-0.7.2-aarch64-apple-darwin.tar.gz"
  sha256 "a34b7a0c6f07d3feb322507fb23af52cd60edf8f4c92f0d3d7357f0a9d5795f1"
  version "0.7.2"

  livecheck do
    skip "Auto-generated on release."
  end

  def install
    bin.install "netcheck"
  end
end
