class Ghostpwn < Formula
  desc "Autonomous pentest agent TUI with multi-provider LLM support"
  homepage "https://github.com/GhostPWN/ghostpwn"
  url "https://github.com/GhostPWN/ghostpwn/archive/refs/tags/v0.3.2.tar.gz"
  sha256 "c7faf856d89f10d653296ed65b28aca91e4201eccb386afbf5941b37ef612652"
  license "MIT"
  head "https://github.com/GhostPWN/ghostpwn.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "ghostpwn #{version}", shell_output("#{bin}/ghostpwn --version")
  end
end
