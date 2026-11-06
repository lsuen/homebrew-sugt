# homebrew-sugt

SUGT / SUTAI 的 Homebrew tap，采用**滚动发布**：release 资产名固定、不带版本号，
仓库只需维护这一份 cask，sugt 每次发版替换同名资产即可。

## 首次安装

```bash
brew tap lsuen/homebrew-sugt
brew trust --cask lsuen/homebrew-sugt/sugt   # Homebrew 6.0+ 第三方 tap 需显式信任
brew install --cask sugt
```

> 若 Homebrew < 6.0，跳过 `brew trust` 这一步。

## 升级

应用内「设置 → 关于 → 检查更新」会自动升级。命令行手动重装最新版：

```bash
brew upgrade --cask --greedy sugt
```

`version :latest` 的 cask 默认不参与普通 `brew upgrade`，需显式点名或 `--greedy`。

## 资产与校验

| 架构 | 资产名 |
| --- | --- |
| Apple Silicon | `SUTAI-macos-arm64.zip` |
| Intel | `SUTAI-macos-x64.zip` |

下载入口：`https://github.com/lsuen/sugt/releases/latest/download/<资产名>`。
每个 release 附带 `SUTAI-checksums.txt` 供 SHA256 核验（cask 因滚动发布使用 `sha256 :no_check`）。

应用未签名：首次启动请右键 → 打开，或执行 `xattr -cr "/Applications/SUTAI.app"`。
