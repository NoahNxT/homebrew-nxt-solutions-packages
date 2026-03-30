class Timeshit < Formula
  desc "Toggl Track to timesheet TUI"
  homepage "https://github.com/NoahNxT/Toggl2Timeshit"
  version "1.10.2"

  on_macos do
    url "https://github.com/NoahNxT/Toggl2Timeshit/releases/download/v1.10.2/timeshit-macos.tar.gz"
    sha256 "dfd627f858886dc362daa5967da2a4a69da94ac11cb6cb00420b8e49a92cba11"
  end

  on_linux do
    url "https://github.com/NoahNxT/Toggl2Timeshit/releases/download/v1.10.2/timeshit-linux.tar.gz"
    sha256 "2b2d5ed2d806466da0bc4c739e073fa492826f425be2a2f8f1ec342d77b17e32"
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
