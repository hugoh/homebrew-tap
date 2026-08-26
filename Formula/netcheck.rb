class Netcheck < Formula
  desc "Holistic view of macOS network status: interfaces, VPN, DNS, reachability"
  homepage "https://github.com/hugoh/netcheck"
  url "https://github.com/hugoh/netcheck/releases/download/v0.6.0/netcheck-0.6.0-aarch64-apple-darwin.tar.gz"
  sha256 "793af7ea9f910b653a1a7b3425c1918aaf236b605c769efdce7b01840a1b3d30"
  version "0.6.0"

  livecheck do
    skip "Auto-generated on release."
  end

  def install
    bin.install "netcheck"
  end
end
