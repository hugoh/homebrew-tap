cask "airtap" do
  version "0.4.0"
  sha256 "3984c8a10613c0e8332a32652b3d408fdacae65f51867db247e08a5820704ed3"

  url "https://github.com/hugoh/airtap/releases/download/v#{version}/Airtap-#{version}.zip"
  name "Airtap"
  desc "Menu bar app that streams one app's audio to an AirPlay 2 speaker"
  homepage "https://github.com/hugoh/airtap"

  depends_on macos: :sonoma
  depends_on arch:  :arm64

  livecheck do
    skip "Auto-generated on release."
  end

  app "Airtap.app"

  postflight_steps do
    # Ad-hoc signed (no Developer ID / notarization), so strip the
    # quarantine attribute Homebrew sets on the downloaded artifact —
    # otherwise Gatekeeper refuses to launch it as "from an unidentified
    # developer" on first open.
    run "/usr/bin/xattr",
        args: ["-cr", "{{appdir}}/Airtap.app"]
  end
end
