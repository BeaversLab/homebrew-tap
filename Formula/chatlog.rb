class Chatlog < Formula
  desc "Extract and save agent chat logs (Claude, Codex, Gemini CLI) as local Markdown files."
  homepage "https://github.com/BeaversLab/waylog-cli"
  url "https://github.com/BeaversLab/waylog-cli/releases/download/v0.2.4/chatlog-macos-universal.tar.gz"
  sha256 "placeholder_will_be_updated_by_ci"
  version "0.2.4"
  license "Apache-2.0"

  def install
    bin.install "chatlog"
  end

  test do
    system "#{bin}/chatlog", "--version"
  end
end
