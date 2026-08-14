cask "axon-llm-dispenser" do
  version "0.2.0"
  sha256 "PENDING_CI_FILL"

  url "https://github.com/dncore/axon-llm-dispenser/releases/download/v#{version}/axon-llm-dispenser-macos-v#{version}.zip"
  name "axon-llm-dispenser"
  desc "把自有的 OpenAI 兼容网关一键接入 Codex / Reasonix / DeepSeek Harness / Claude Code / pi agent"
  homepage "https://github.com/dncore/axon-llm-dispenser"

  app "axon-llm-dispenser.app"

  zap trash: "~/Library/Application Support/com.axonllm.dispenser"
end
