class Netcheck < Formula
  desc "Holistic view of macOS network status: interfaces, VPN, DNS, reachability"
  homepage "https://github.com/hugoh/netcheck"
  url "https://github.com/hugoh/netcheck/releases/download/v0.7.3/netcheck-0.7.3-aarch64-apple-darwin.tar.gz"
  sha256 "8344bf28604c60ec2d79acc3f4be1293c87ce420b4064f2330540287bbf0450c"
  version "0.7.3"

  livecheck do
    skip "Auto-generated on release."
  end

  def install
    bin.install "netcheck"
  end
end
