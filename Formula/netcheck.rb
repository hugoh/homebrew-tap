class Netcheck < Formula
  desc "Holistic view of macOS network status: interfaces, VPN, DNS, reachability"
  homepage "https://github.com/hugoh/netcheck"
  url "https://github.com/hugoh/netcheck/releases/download/v0.2.1/netcheck-0.2.1-aarch64-apple-darwin.tar.gz"
  sha256 "9f577d0b3f8cff7eebe9f9ace31eea4374a148d66dbee97d034e976ecf4272be"
  version "0.2.1"

  livecheck do
    skip "Auto-generated on release."
  end

  def install
    bin.install "netcheck"
    bin.install "netcheck-tui"
    bin.install "netcheck-gui"
  end
end
