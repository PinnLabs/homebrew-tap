cask "copyit" do
  version "1.2.1"
  sha256 "8a96b9751e23f3df833475db8523f485fe2481a3e96c3b315337653607c163d1"

  url "https://github.com/PinnLabs/CopyIT/releases/download/v#{version}/CopyIT-#{version}.zip"
  name "CopyIT"
  desc "Native macOS menu bar clipboard manager"
  homepage "https://github.com/PinnLabs/CopyIT"

  depends_on macos: :sonoma

  app "ClipboardManager.app"

  zap trash: [
    "~/Library/Application Support/com.copyit.ClipboardManager",
    "~/Library/Caches/com.copyit.ClipboardManager",
    "~/Library/HTTPStorages/com.copyit.ClipboardManager",
    "~/Library/Preferences/com.copyit.ClipboardManager.plist",
  ]
end
