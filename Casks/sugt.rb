cask "sugt" do
  arch arm: "arm64", intel: "x64"

  version "1.1.7"
  sha256 arm:   "f79381be1c4d9b5a087bba9246bfdf3268c21d11fe75d8ba33e578c67255cd32",
         intel: "8f5565ceeb87876bbd4dbd59f734b688ffd832935a8e9cb2c9690f023196cb19"

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
