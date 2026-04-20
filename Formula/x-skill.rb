class XSkill < Formula
  desc "Open agent skills ecosystem CLI for installing and managing AI agent skills"
  homepage "https://github.com/BeaversLab/x-skill"
  license "MIT"

  on_linux do
    url "https://github.com/BeaversLab/x-skill/releases/download/v0.1.2/x-skill-linux-x86_64.tar.gz"
    sha256 "3b6bb23ad29600c2b457172668173c47acbcff00280a24a53a86599d8bb5acdf"
    version "0.1.2"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/BeaversLab/x-skill/releases/download/v0.1.2/x-skill-macos-aarch64.tar.gz"
      sha256 "c6757c4170f828b7f20358c70a5f8dd2bececd921ba636ef20065ec5df317d2c"
      version "0.1.2"
    else
      url "https://github.com/BeaversLab/x-skill/archive/refs/tags/v0.1.2.tar.gz"
      sha256 "0bf8ac33062a464133437d0a372674cdadd1a260aca5c42277a44fc8493a5cfd"
      version "0.1.2"

      depends_on "rust" => :build
    end
  end

  def install
    if OS.mac? && Hardware::CPU.intel?
      system "cargo", "install", *std_cargo_args(path: ".")
    else
      bin.install "x-skill"
    end
  end

  test do
    system "#{bin}/x-skill", "--version"
  end
end
