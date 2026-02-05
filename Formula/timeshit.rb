class Timeshit < Formula
  desc "Toggl Track to timesheet TUI"
  homepage "https://github.com/NoahNxT/Toggl2Timeshit"
  version "1.4.2"

  on_macos do
    url "https://github.com/NoahNxT/Toggl2Timeshit/releases/download/v1.4.2/timeshit-macos.tar.gz"
    sha256 "6854784fc39ab8a27c599870b7626e9d6125a07565aa95b66331dafa5c615ddd"
  end

  on_linux do
    url "https://github.com/NoahNxT/Toggl2Timeshit/releases/download/v1.4.2/timeshit-linux.tar.gz"
    sha256 "8313eb1f42a709aa43d7161ab763d14cf05a187dd0793322e5f893055904ba0c"
  end

  def install
    if File.exist?("timeshit")
      bin.install "timeshit"
    elsif File.exist?("timeshit-macOS")
      bin.install "timeshit-macOS" => "timeshit"
    elsif File.exist?("timeshit-Linux")
      bin.install "timeshit-Linux" => "timeshit"
    else
      odie "timeshit binary not found in archive"
    end
  end
end
