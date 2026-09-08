cask "netcheck" do
  version "0.7.1"

  on_macos do
    on_arm do
      sha256 "d0eb25aba3f739ffb3d3a4076e7b810c72b21f6ac5eb861aa14388fe355e704b"
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

  postflight_steps do
    # Ad-hoc signed (no Developer ID / notarization), so strip the
    # quarantine attribute Homebrew sets on the downloaded artifact —
    # otherwise Gatekeeper refuses to launch it as "from an unidentified
    # developer" on first open.
    system_command "/usr/bin/xattr",
                    args: ["-cr", "#{appdir}/NetCheck.app"]
  end
end
