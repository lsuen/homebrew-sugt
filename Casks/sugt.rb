# 作者：sun / 孙文龙
# 用途：SUGT 滚动发布 cask。URL 固定指向 releases/latest 的稳定资产名，
#       因此 sugt 每次发版只需替换同名 release 资产，本仓库无需再改动。
cask "sugt" do
  arch arm: "arm64", intel: "x64"

  version :latest
  sha256 :no_check

  url "https://github.com/lsuen/sugt/releases/latest/download/SUTAI-macos-#{arch}.zip"
  name "SUGT"
  name "SUTAI"
  desc "SUGT (su gateway) - local AI gateway for unified LLM access"
  homepage "https://github.com/lsuen/sugt"

  # 应用内置更新；:latest cask 需显式点名或 --greedy 才会重新下载。
  auto_updates true

  app "SUTAI.app"

  uninstall quit: "com.qmtech.sugt"

  caveats <<~EOS
    Release 资产名固定、不含版本号，本 cask 始终安装最新版本。
    应用未签名：首次启动请在 Finder 中右键 → 打开，或执行：
      xattr -cr "/Applications/SUTAI.app"
    手动重装最新版：
      brew upgrade --cask --greedy sugt
    SHA256 校验清单见对应 release 的 SUTAI-checksums.txt。
  EOS
end
