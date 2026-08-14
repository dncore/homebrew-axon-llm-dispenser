cask "axon-llm-dispenser" do
  version "0.2.0"
  sha256 "e69acc9f828f00c0cd20b7248f1c6e84c2181d620cf6e5a89d82fec61ce9b7f2"

  url "https://github.com/dncore/axon-llm-dispenser/releases/download/v#{version}/axon-llm-dispenser-macos-v#{version}.zip"
  name "axon-llm-dispenser"
  desc "把自有的 OpenAI 兼容网关一键接入 Codex / Reasonix / DeepSeek Harness / Claude Code / pi agent"
  homepage "https://github.com/dncore/axon-llm-dispenser"

  app "axon-llm-dispenser.app"

  zap trash: "~/Library/Application Support/com.axonllm.dispenser"
end
