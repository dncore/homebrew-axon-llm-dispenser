# homebrew-axon-llm-dispenser

Homebrew tap for [axon-llm-dispenser](https://github.com/dncore/axon-llm-dispenser).

## 安装

```bash
brew tap dncore/axon-llm-dispenser
brew trust dncore/axon-llm-dispenser   # 授权 tap 执行安装脚本
brew install --cask axon-llm-dispenser
```

> - cask 的 `postflight` 会在安装后自动移除 quarantine,应用可**直接打开**,无需手动放行。
> - 应用为 ad-hoc 签名(未公证);如个别环境仍被 Gatekeeper 拦截,执行
>   `xattr -dr com.apple.quarantine "/Applications/axon-llm-dispenser.app"` 即可。
> - `brew trust` 是 Homebrew 4.6+ 的安全机制:授权 tap 运行安装期命令;源为公开仓库,可审计。
