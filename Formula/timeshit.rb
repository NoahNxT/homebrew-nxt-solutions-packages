class Timeshit < Formula
  desc "Toggl Track to timesheet TUI"
  homepage "https://github.com/NoahNxT/Toggl2Timeshit"
  version "1.5.1"

  on_macos do
    url "https://github.com/NoahNxT/Toggl2Timeshit/releases/download/v1.5.1/timeshit-macos.tar.gz"
    sha256 "df7c884434b553ba9e0f91bf147e17796eb0091bd375c81369cc5fd6922aa762"
  end

  on_linux do
    url "https://github.com/NoahNxT/Toggl2Timeshit/releases/download/v1.5.1/timeshit-linux.tar.gz"
    sha256 "a40f9d0e7ba91cbf47cc368cc30db68687e85a202768109948a570a8dc1f62cd"
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
