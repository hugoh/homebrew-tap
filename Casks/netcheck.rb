cask "netcheck" do
  version "0.2.0"

  on_macos do
    on_arm do
      sha256 "2b1cba3085e100b9afd77a2ad17c9a4d143268ac81aa44351baa665b6b6dea2f"
      url "https://github.com/hugoh/netcheck/releases/download/v#{version}/netcheck-#{version}-aarch64-apple-darwin.tar.gz"
    end
  end

  name "netcheck"
  desc "Holistic view of macOS network status: interfaces, VPN, DNS, reachability"
  homepage "https://github.com/hugoh/netcheck"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "netcheck"
  binary "netcheck-tui"
  binary "netcheck-gui"
end
