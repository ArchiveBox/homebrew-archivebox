class Archivebox < Formula
  desc "Self-hosted internet archiving solution"
  homepage "https://archivebox.io"
  version "0.8.5"
  license "MIT"
  url "https://get.archivebox.io"

  depends_on "python"
  depends_on "pipx"
  depends_on "node"
  depends_on "ripgrep"
  depends_on "sonic"
  depends_on "curl"
  depends_on "wget"
  depends_on "git"
  depends_on "yt-dlp"
  
  def install
    system "echo"
    system "echo", "❌ ArchiveBox is no longer distributed as a Homebrew formula."
    system "echo", "   More info: https://github.com/ArchiveBox/homebrew-archivebox"
    system "echo"
    system "echo", "⬇️ Install via pip (or pipx) instead:"
    system "echo", "    pipx install archivebox"
    system "echo", "    archivebox install"
    system "echo"
    system "echo"
    system exit, 1
  end
end
