cask "juxbox" do
  version "0.1.3"
  sha256 "a0c72b1ed99e239364e06c9f9d3f8cbc11558042abab10be24e782ffbc94b58e"

  url "https://github.com/tejux/juxbox-releases/releases/download/v#{version}/Juxbox-#{version}.dmg"
  name "Juxbox"
  desc "Local-first developer utility workbench"
  homepage "https://github.com/tejux/juxbox-releases"

  livecheck do
    url :stable
    strategy :github_latest
  end

  app "Juxbox.app"

  zap trash: [
    "~/Library/Application Support/Juxbox",
    "~/Library/Caches/Juxbox",
    "~/Library/Preferences/com.juxbox.app.plist",
    "~/Library/Saved Application State/com.juxbox.app.savedState",
  ]
end
