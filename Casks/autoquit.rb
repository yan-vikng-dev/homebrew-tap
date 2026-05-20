cask "autoquit" do
  version "1.0.0"
  sha256 "09619e330090349c584ad25c0339fdeca212823421406752799dbdeee5f3e970"

  url "https://github.com/yan-vikng-dev/AutoQuit/releases/download/v#{version}/AutoQuit-v#{version}.dmg"
  name "AutoQuit"
  desc "Menu bar app that closes apps after their last window is gone"
  homepage "https://github.com/yan-vikng-dev/AutoQuit"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "AutoQuit.app"

  uninstall quit: "dev.yan.autoquit"

  zap trash: [
    "~/Library/Logs/AutoQuit",
    "~/Library/Preferences/dev.yan.autoquit.plist",
  ]
end
