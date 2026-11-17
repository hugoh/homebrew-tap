cask "netcheck" do
  version "0.8.0"
  sha256 "1a59403a773df53a3aeeb6153c3ee47c1e48b1733af483538155c1ec988c67ce"

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
