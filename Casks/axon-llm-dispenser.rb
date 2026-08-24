cask "axon-llm-dispenser" do
  version "0.4.9"
  sha256 "7d9bed1d0c0dda8b1eca75734d6a76c254398be492a36a1b81a2fa664ee78b2b"

  url "https://github.com/dncore/axon-llm-dispenser/releases/download/v#{version}/axon-llm-dispenser-macos-v#{version}.zip"
  name "Axon"
  desc "把自有的 OpenAI 兼容网关一键配置到各 Agent 工具"
  homepage "https://github.com/dncore/axon-llm-dispenser"

  app "Axon.app"

  # 应用为 ad-hoc 签名(未公证):安装后自动移除 quarantine,避免 Gatekeeper 拦截
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Axon.app"]
  end

  caveats <<~EOS
    Axon 为 ad-hoc 签名(未公证)。如仍被 Gatekeeper 拦截:
      终端执行:  xattr -dr com.apple.quarantine "/Applications/Axon.app"
      或:        右键应用 → 打开 → 再点「打开」
  EOS

  zap trash: "~/Library/Application Support/com.axonllm.dispenser"
end
