cask "juxbox" do
  version "0.1.0"
  sha256 :no_check

  url "https://github.com/tejux/juxbox/releases/download/v#{version}/Juxbox-#{version}.dmg"
  name "Juxbox"
  desc "Local-first developer utility workbench"
  homepage "https://github.com/tejux/juxbox"

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
