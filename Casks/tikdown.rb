cask "tikdown" do
  version "1.0.1"
  sha256 "b1f2eddbd95f5a50c9a8d3cf5ccf3cc4a4fb0aa8ca34dd45a72f47b1c3e6a330"

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
