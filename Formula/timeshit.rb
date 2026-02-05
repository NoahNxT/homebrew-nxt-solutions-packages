class Timeshit < Formula
  desc "Toggl Track to timesheet TUI"
  homepage "https://github.com/NoahNxT/Toggl2Timeshit"
  version "1.5.2"

  on_macos do
    url "https://github.com/NoahNxT/Toggl2Timeshit/releases/download/v1.5.2/timeshit-macos.tar.gz"
    sha256 "cdf2b2c29e2f9b1dfc481bb97ec475b5bf7f97bd2b3ee2aca9c71bd159098051"
  end

  on_linux do
    url "https://github.com/NoahNxT/Toggl2Timeshit/releases/download/v1.5.2/timeshit-linux.tar.gz"
    sha256 "d861dd578752b6eee3dec4e260b6fcf62879c6fdd8b5aca94bc2cc4075fa9376"
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
