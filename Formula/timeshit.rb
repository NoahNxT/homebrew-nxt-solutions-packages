class Timeshit < Formula
  desc "Toggl Track to timesheet TUI"
  homepage "https://github.com/NoahNxT/Toggl2Timeshit"
  version "1.4.1"

  on_macos do
    url "https://github.com/NoahNxT/Toggl2Timeshit/releases/download/v1.4.1/timeshit-macos.tar.gz"
    sha256 "b2bca6ed13b91b4a3c8248b23628fdb97625df463ca84222b0a25fd1238bc81d"
  end

  on_linux do
    url "https://github.com/NoahNxT/Toggl2Timeshit/releases/download/v1.4.1/timeshit-linux.tar.gz"
    sha256 "26e184257066b0eb59867c1c481acc3c6979fe4175ae96f54a4cece8c1cc19b7"
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
