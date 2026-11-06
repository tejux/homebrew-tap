cask "juxbox" do
  version "0.1.0"
  sha256 "eba4ce2c3ea9c57efea72b490809b36d19387b908e4fcbfa241d9d6035d0f908"

  url "https://github.com/tejux/juxbox-releases/releases/download/v#{version}/Juxbox-#{version}.dmg"
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
