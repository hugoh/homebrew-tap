cask "netcheck" do
  version "0.4.0"

  on_macos do
    on_arm do
      sha256 "bfbe6a6f22e241e196fdea857477161adeae961068745444e8b47367f29df702"
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
