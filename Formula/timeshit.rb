class Timeshit < Formula
  desc "Toggl Track to timesheet TUI"
  homepage "https://github.com/NoahNxT/Toggl2Timeshit"
  version "1.5.0"

  on_macos do
    url "https://github.com/NoahNxT/Toggl2Timeshit/releases/download/v1.5.0/timeshit-macos.tar.gz"
    sha256 "bc97e8642a2e34f24b8e5983ba998f511d443f63057e01ae2dfceb0459c07f98"
  end

  on_linux do
    url "https://github.com/NoahNxT/Toggl2Timeshit/releases/download/v1.5.0/timeshit-linux.tar.gz"
    sha256 "caef165a415a0f64f272fc91dd20b76c3e2ca9e8f20716700f850053d40ec985"
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
