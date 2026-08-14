cask "axon-llm-dispenser" do
  version "0.2.0"
  sha256 "e69acc9f828f00c0cd20b7248f1c6e84c2181d620cf6e5a89d82fec61ce9b7f2"

  url "https://github.com/dncore/axon-llm-dispenser/releases/download/v#{version}/axon-llm-dispenser-macos-v#{version}.zip"
  name "axon-llm-dispenser"
  desc "把自有的 OpenAI 兼容网关一键接入 Codex / Reasonix / DeepSeek Harness / Claude Code / pi agent"
  homepage "https://github.com/dncore/axon-llm-dispenser"

  app "axon-llm-dispenser.app"

  # 应用为 ad-hoc 签名(未公证):安装后自动移除 quarantine,避免 Gatekeeper 拦截
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/axon-llm-dispenser.app"]
  end

  caveats <<~EOS
    axon-llm-dispenser 为 ad-hoc 签名(未公证)。如仍被 Gatekeeper 拦截:
      终端执行:  xattr -dr com.apple.quarantine "/Applications/axon-llm-dispenser.app"
      或:        右键应用 → 打开 → 再点「打开」
  EOS

  zap trash: "~/Library/Application Support/com.axonllm.dispenser"
end
