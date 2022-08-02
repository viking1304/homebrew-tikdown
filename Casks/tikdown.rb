cask "tikdown" do
  version "1.1.1"
  sha256 "686e250cd7807ff778ab79e4df4a79fa4d7c13cf67585d52abbb4f33719ae0f8"

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
