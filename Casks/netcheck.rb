cask "netcheck" do
  version "0.7.2"
  sha256 "486052800e3221cd0c87259e153756b77f997814629798d2fb60344a362074a6"

  url "https://github.com/hugoh/netcheck/releases/download/v#{version}/NetCheck-#{version}.zip"
  name "NetCheck"
  desc "Native SwiftUI macOS network status app"
  homepage "https://github.com/hugoh/netcheck"

  depends_on macos: :big_sur
  depends_on arch:  :arm64

  livecheck do
    skip "Auto-generated on release."
  end

  app "NetCheck.app"

  postflight_steps do
    # Ad-hoc signed (no Developer ID / notarization), so strip the
    # quarantine attribute Homebrew sets on the downloaded artifact —
    # otherwise Gatekeeper refuses to launch it as "from an unidentified
    # developer" on first open.
    run "/usr/bin/xattr",
        args: ["-cr", "{{appdir}}/NetCheck.app"]
  end
end
