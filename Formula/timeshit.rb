class Timeshit < Formula
  desc "Toggl Track to timesheet TUI"
  homepage "https://github.com/NoahNxT/Toggl2Timeshit"
  version "1.6.1"

  on_macos do
    url "https://github.com/NoahNxT/Toggl2Timeshit/releases/download/v1.6.1/timeshit-macos.tar.gz"
    sha256 "e7c588f9c8a549ca944977f48aa55db8e4ae313f7d485753cdd2aca4c0e9d311"
  end

  on_linux do
    url "https://github.com/NoahNxT/Toggl2Timeshit/releases/download/v1.6.1/timeshit-linux.tar.gz"
    sha256 "5af013717904ba6cf526bf7ed328a2bec89202d17f9a7cc05751417ad7d8b3e1"
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
