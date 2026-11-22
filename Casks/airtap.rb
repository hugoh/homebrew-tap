cask "airtap" do
  version "0.5.0"
  sha256 "ae3f7e9ee00cbf1ebe19f7e953576d521dea8f4428744c25f7d074077e37da4e"

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
