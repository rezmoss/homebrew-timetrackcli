class Timetrackcli < Formula
  desc "Lightweight, privacy-focused time tracking CLI for macOS"
  homepage "https://github.com/rezmoss/timetrackcli"
  url "https://github.com/rezmoss/timetrackcli/releases/download/v0.2/timetrackcli-darwin-universal.tar.gz"
  sha256 "ec27d7f39f7d0f288dcca1fd9fa7a6655371df4772ee50029e0375bfefcb5397"
  license "MIT"
  version "0.2"

  depends_on :macos

  def install
    bin.install "timetrackcli-darwin-universal" => "timetrackcli"
  end

  def caveats
    <<~EOS
      To start tracking time, run:
        timetrackcli
      
      View dashboard with:
        timetrackcli --dashboard
      
      Generate reports with:
        timetrackcli --report
    EOS
  end

  test do
    assert_match "timetrackcli", shell_output("#{bin}/timetrackcli --help 2>&1", 1)
  end
end
