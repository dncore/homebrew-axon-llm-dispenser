cask "axon-llm-dispenser" do
  version "0.4.5"
  sha256 "f7ae9e8fc22fa6f9284eb1397bfc7b7cac586153d7008f4106792c7f2bf565b0"

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
