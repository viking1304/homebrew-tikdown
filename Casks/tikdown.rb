cask "bm-tikdown" do
  version "1.0.0"
  sha256 "9c0abc5a6e69a26aad2a6697f322766040fbbe77ed733f0c628377feae09b091"

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
