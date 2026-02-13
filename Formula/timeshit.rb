class Timeshit < Formula
  desc "Toggl Track to timesheet TUI"
  homepage "https://github.com/NoahNxT/Toggl2Timeshit"
  version "1.8.0"

  on_macos do
    url "https://github.com/NoahNxT/Toggl2Timeshit/releases/download/v1.8.0/timeshit-macos.tar.gz"
    sha256 "2ffd7084e61a3c960efbe80a36fb3214afce15798a8291aa7127c010c4092b30"
  end

  on_linux do
    url "https://github.com/NoahNxT/Toggl2Timeshit/releases/download/v1.8.0/timeshit-linux.tar.gz"
    sha256 "eaf2b9e180c6caf0b41fb26072a2b20fdaa4681b178f73302ed01d035adbda71"
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
