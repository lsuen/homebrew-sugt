cask "sugt" do
  arch arm: "arm64", intel: "x64"

  version "1.1.6"
  sha256 arm:   "d75a6080a9b81aef126c5122992dcf41306a46afb605333081a3d0abed3d92d1",
         intel: "6e77857c5053cdbd6af2da867ae8e5473426e9777c97f91ce88b1a2352855ebd"

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
