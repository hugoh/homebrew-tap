cask "netcheckmac" do
  version "0.2.0"

  on_macos do
    on_arm do
      sha256 "2182d1f8f5893e6476c594f0dc7cc107ed31adb149c24ca4faa8949a2f3f6514"
      url "https://github.com/hugoh/netcheck/releases/download/v#{version}/NetCheckMac-#{version}.zip"
    end
  end

  name "NetCheckMac"
  desc "Native SwiftUI macOS network status app"
  homepage "https://github.com/hugoh/netcheck"

  livecheck do
    skip "Auto-generated on release."
  end

  app "NetCheckMac.app"

  postflight do
    # Ad-hoc signed (no Developer ID / notarization), so strip the
    # quarantine attribute Homebrew sets on the downloaded artifact —
    # otherwise Gatekeeper refuses to launch it as "from an unidentified
    # developer" on first open.
    system_command "/usr/bin/xattr",
                    args: ["-cr", "#{appdir}/NetCheckMac.app"]
  end
end
