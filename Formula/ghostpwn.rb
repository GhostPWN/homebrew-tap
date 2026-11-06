class Ghostpwn < Formula
  desc "Autonomous pentest agent TUI with multi-provider LLM support"
  homepage "https://github.com/GhostPWN/ghostpwn"
  url "https://github.com/GhostPWN/ghostpwn/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "7c3640971854081f599fca5319a0f2eb83122542b3d00535bfcf7f2d5dc26085"
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
