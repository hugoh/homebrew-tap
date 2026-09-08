class Netcheck < Formula
  desc "Holistic view of macOS network status: interfaces, VPN, DNS, reachability"
  homepage "https://github.com/hugoh/netcheck"
  url "https://github.com/hugoh/netcheck/releases/download/v0.7.1/netcheck-0.7.1-aarch64-apple-darwin.tar.gz"
  sha256 "da479491a63a45972db55e9e1c277316207e03d8046209e211b23b0f139e818d"
  version "0.7.1"

  livecheck do
    skip "Auto-generated on release."
  end

  def install
    bin.install "netcheck"
  end
end
