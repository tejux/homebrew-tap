cask "juxbox" do
  version "0.1.2"
  sha256 "8f81c3e5ed36e4c08c1d88609dc7afe8379ba130da7191af6b2d45b0aa409e0a"

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
