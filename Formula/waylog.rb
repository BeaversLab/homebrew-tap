class Waylog < Formula
  desc "Seamlessly sync, preserve, and version-control your AI coding conversations locally"
  homepage "https://github.com/BeaversLab/waylog-cli"
  url "https://github.com/BeaversLab/waylog-cli/releases/download/v0.2.4/waylog-macos-universal.tar.gz"
  sha256 "b35a32b17a08e884dd8fd8075f0cc2cf56c3579842dec7af91f2ce43c85578d6"
  version "v0.2.4"
  license "Apache-2.0"

  def install
    bin.install "waylog"
  end

  test do
    system "#{bin}/waylog", "--version"
  end
end
