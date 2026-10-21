cask "sugt" do
  arch arm: "arm64", intel: "x64"

  version "1.1.4"
  sha256 arm: "e7f929026cdd403d4e8ca9422edc00de15f694e58c7cc5d6fa12a919531fd1f5",
         intel: "2dcb043f402bc04e9790fb43cf9e9bf18e694f7e056bf6dd496da9912a4b337d"

  url "https://github.com/lsuen/sugt/releases/download/v#{version}/SUTAI-#{version}-macos-#{arch}.zip"
  name "SUGT"
  name "SUTAI"
  desc "SUGT (su gateway) - local AI gateway for unified LLM access"
  homepage "https://github.com/lsuen/sugt"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "SUTAI.app"

  uninstall quit: "com.qmtech.sugt"

  caveats <<~EOS
    The app is unsigned. On first launch, right-click the app in Finder and select "Open",
    or run: xattr -cr "/Applications/SUTAI.app"
  EOS
end
