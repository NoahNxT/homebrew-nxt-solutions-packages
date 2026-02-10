class Timeshit < Formula
  desc "Toggl Track to timesheet TUI"
  homepage "https://github.com/NoahNxT/Toggl2Timeshit"
  version "1.7.0"

  on_macos do
    url "https://github.com/NoahNxT/Toggl2Timeshit/releases/download/v1.7.0/timeshit-macos.tar.gz"
    sha256 "f776bf7b0bdc1abeb5f85d184130096843ab0ae8cabc620e1935a13bfaaf855f"
  end

  on_linux do
    url "https://github.com/NoahNxT/Toggl2Timeshit/releases/download/v1.7.0/timeshit-linux.tar.gz"
    sha256 "1bfae6db9a2e245ef838f16f92bad052b174bbefbca185b3d2969977add877dc"
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
