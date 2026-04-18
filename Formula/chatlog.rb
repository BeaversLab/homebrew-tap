class Chatlog < Formula
  desc "Seamlessly sync, preserve, and version-control your AI coding conversations locally"
  homepage "https://github.com/BeaversLab/chatlog"
  url "https://github.com/BeaversLab/chatlog/releases/download/v0.3.0/chatlog-macos-universal.tar.gz"
  sha256 "a7882b59251e86b100d8341aa1b4145bbbffa8b10dd665c342e88296566f282c"
  version "v0.3.0"
  license "Apache-2.0"

  def install
    bin.install "chatlog"
  end

  test do
    system "#{bin}/chatlog", "--version"
  end
end
