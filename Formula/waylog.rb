class Waylog < Formula
  desc "Seamlessly sync, preserve, and version-control your AI coding conversations locally"
  homepage "https://github.com/BeaversLab/waylog-cli"
  url "https://github.com/BeaversLab/waylog-cli/releases/download/v0.2.4/waylog-macos-universal.tar.gz"
  sha256 "77d52a272fee709ecbed256e66eeaf40f1db0fc08de56b5af740b7e192a2ae6f"
  version "v0.2.4"
  license "Apache-2.0"

  def install
    bin.install "waylog"
  end

  test do
    system "#{bin}/waylog", "--version"
  end
end
