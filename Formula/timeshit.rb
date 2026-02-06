class Timeshit < Formula
  desc "Toggl Track to timesheet TUI"
  homepage "https://github.com/NoahNxT/Toggl2Timeshit"
  version "1.6.0"

  on_macos do
    url "https://github.com/NoahNxT/Toggl2Timeshit/releases/download/v1.6.0/timeshit-macos.tar.gz"
    sha256 "79a0657a17ee089757a76cfa47daaf154c50005bc111ae598af9f442f970f0b9"
  end

  on_linux do
    url "https://github.com/NoahNxT/Toggl2Timeshit/releases/download/v1.6.0/timeshit-linux.tar.gz"
    sha256 "29a0097e39f7162151620346e014ea9dc8a741bc51f9ef5314bee3aaf160a0b1"
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
