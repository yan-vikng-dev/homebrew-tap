cask "autoquit" do
  version "1.0.1"
  sha256 "ff098711925e39b933abef4f9bb0f1b398c834c8a44e08067c49522a95a54c5f"

  url "https://github.com/yan-vikng-dev/AutoQuit/releases/download/v#{version}/AutoQuit-v#{version}-macos.zip"
  name "AutoQuit"
  desc "Menu bar app that closes apps after their last window is gone"
  homepage "https://github.com/yan-vikng-dev/AutoQuit"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "AutoQuit.app"

  uninstall quit: "dev.yan.autoquit"

  zap trash: [
    "~/Library/Logs/AutoQuit",
    "~/Library/Preferences/dev.yan.autoquit.plist",
  ]
end
