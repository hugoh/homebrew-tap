class Netcheck < Formula
  desc "Holistic view of macOS network status: interfaces, VPN, DNS, reachability"
  homepage "https://github.com/hugoh/netcheck"
  url "https://github.com/hugoh/netcheck/releases/download/v0.3.0/netcheck-0.3.0-aarch64-apple-darwin.tar.gz"
  sha256 "1ed95317a0a22f6eed3fec5a74c693694cc9c44769d2fec50876389f3cb9eb16"
  version "0.3.0"

  livecheck do
    skip "Auto-generated on release."
  end

  def install
    bin.install "netcheck"
    bin.install "netcheck-tui"
    bin.install "netcheck-gui"
  end
end
