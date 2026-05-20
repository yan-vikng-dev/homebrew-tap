cask "autoquit" do
  version "1.0.2"
  sha256 "1c4784c3b354119ba64992dfd74088dfc6439d3b5e46763662d5624f75d303fa"

  url "https://github.com/yan-vikng-dev/AutoQuit/releases/download/v#{version}/AutoQuit-v#{version}.dmg"
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
