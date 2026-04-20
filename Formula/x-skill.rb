class XSkill < Formula
  desc "Open agent skills ecosystem CLI for installing and managing AI agent skills"
  homepage "https://github.com/BeaversLab/x-skill"
  url "https://github.com/BeaversLab/x-skill/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "62308b2db12dc20df59872f0865174bba388e614360c630016814988fc8d4d7e"
  version "0.1.1"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    system "#{bin}/x-skill", "--version"
  end
end
