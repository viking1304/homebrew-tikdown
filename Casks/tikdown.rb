cask "tikdown" do
  version "1.2.1"
  sha256 "74aed53718bc3039ac969d3f4c05ad30b5432c98d3f3f6843ebe1449577b682e"

  url "https://github.com/Tairraos/TikDown/releases/download/v#{version}/Tikdown-#{version}.dmg"
  name "TikDown"
  desc "Tiktok/Douyin video downloader"
  homepage "https://github.com/Tairraos/TikDown/"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "Tikdown.app"

  zap trash: [
    "~/Library/Application Support/Tiktok Downloader",
    "~/Library/Preferences/com.tairraos.tikdown.plist",
    "~/Library/Saved Application State/com.tairraos.tikdown.savedState"
  ]

end
