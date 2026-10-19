cask "sugt" do
  arch arm: "arm64", intel: "x64"

  version "1.1.3"
  sha256 arm: "ffaba4e27e151719772a43e0170180a858eba7a37cd06821541d6f9558fec4da",
         intel: "8e864fcb95643d2ba0917ae6d36ef5ffadda872eaa14e0b9e18a5741e20dee60"

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
