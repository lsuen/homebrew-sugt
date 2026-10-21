cask "sugt" do
  arch arm: "arm64", intel: "x64"

  version "1.1.5"
  sha256 arm:   "5caaad3af9ae45b63105f4f05818e5ac6aef1d83dd22c71860bfa8ece1c79d36",
         intel: "7c05bf77d48fcff693c2be0df5cacb23fc40f7ed41eedc08df60453240c975a1"

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
