class Timeshit < Formula
  desc "Toggl Track to timesheet TUI"
  homepage "https://github.com/NoahNxT/Toggl2Timeshit"
  version "1.9.1"

  on_macos do
    url "https://github.com/NoahNxT/Toggl2Timeshit/releases/download/v1.9.1/timeshit-macos.tar.gz"
    sha256 "76cba0d813a3b86fed1b38a9b833feff0f2865aeb1383330ec41aa9ec021212d"
  end

  on_linux do
    url "https://github.com/NoahNxT/Toggl2Timeshit/releases/download/v1.9.1/timeshit-linux.tar.gz"
    sha256 "20fa81d26b6be4ded4749fa4d3c5d46da71987cda3fa64e117267092e66633a6"
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
