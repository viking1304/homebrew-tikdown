cask "tikdown" do
  version "1.0.1"
  sha256 "682c2cac5631ac0a1a5a27ba8a70f79eb833112c936f01275da23a76b8765735"

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
