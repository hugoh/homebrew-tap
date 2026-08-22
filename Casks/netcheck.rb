cask "netcheck" do
  version "0.2.1"

  on_macos do
    on_arm do
      sha256 "4fd200de8ee9261e939178d2c23333b744831f7a94be88cb9bc5e4cf870c8107"
      url "https://github.com/hugoh/netcheck/releases/download/v#{version}/NetCheck-#{version}.zip"
    end
  end

  name "NetCheck"
  desc "Native SwiftUI macOS network status app"
  homepage "https://github.com/hugoh/netcheck"

  livecheck do
    skip "Auto-generated on release."
  end

  app "NetCheck.app"

  postflight do
    # Ad-hoc signed (no Developer ID / notarization), so strip the
    # quarantine attribute Homebrew sets on the downloaded artifact —
    # otherwise Gatekeeper refuses to launch it as "from an unidentified
    # developer" on first open.
    system_command "/usr/bin/xattr",
                    args: ["-cr", "#{appdir}/NetCheck.app"]
  end
end
