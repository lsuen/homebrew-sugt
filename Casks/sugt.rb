cask "sugt" do
  version "1.1.1"
  sha256 "084e28d404a4acb8b4b9822e8f2eaddcf51a2e019a8a79fcd72b052dca396b65"

  url "https://github.com/lsuen/sugt/releases/download/v#{version}/SUTAI-#{version}-macos-x64.zip"
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