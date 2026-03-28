class Timeshit < Formula
  desc "Toggl Track to timesheet TUI"
  homepage "https://github.com/NoahNxT/Toggl2Timeshit"
  version "1.10.1"

  on_macos do
    url "https://github.com/NoahNxT/Toggl2Timeshit/releases/download/v1.10.1/timeshit-macos.tar.gz"
    sha256 "4986769acc22669cca436f561351f7015d51c21769a03aab7496bcf5b6237fbf"
  end

  on_linux do
    url "https://github.com/NoahNxT/Toggl2Timeshit/releases/download/v1.10.1/timeshit-linux.tar.gz"
    sha256 "dc2ba492db236436df698bce190b7536b5fdfea1cc8077655b8cb9c3dba27778"
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
