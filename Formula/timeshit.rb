class Timeshit < Formula
  desc "Toggl Track to timesheet TUI"
  homepage "https://github.com/NoahNxT/Toggl2Timeshit"
  version "1.3.6"

  on_macos do
    url "https://github.com/NoahNxT/Toggl2Timeshit/releases/download/v1.3.6/timeshit-macos.tar.gz"
    sha256 "703288ff65c1ee92ccbe89d9ecf326a48a2822e4accff97207026a3d21c56e59"
  end

  on_linux do
    url "https://github.com/NoahNxT/Toggl2Timeshit/releases/download/v1.3.6/timeshit-linux.tar.gz"
    sha256 "81c5867a1eb708087abb99351650fa79e91ec5df1c1295d860ad752f65d598ad"
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
