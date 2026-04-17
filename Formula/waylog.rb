class Waylog < Formula
  desc "Automatically save chats from Claude, Codex, and Gemini CLI to local Markdown files."
  homepage "https://github.com/BeaversLab/waylog-cli"
  url "https://github.com/BeaversLab/waylog-cli/releases/download/v0.2.3/waylog-macos-universal.tar.gz"
  sha256 "placeholder_will_be_updated_by_ci"
  version "0.2.3"
  license "Apache-2.0"

  def install
    bin.install "waylog"
  end

  test do
    system "#{bin}/waylog", "--version"
  end
end
