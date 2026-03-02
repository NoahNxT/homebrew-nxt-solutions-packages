class Timeshit < Formula
  desc "Toggl Track to timesheet TUI"
  homepage "https://github.com/NoahNxT/Toggl2Timeshit"
  version "1.9.0"

  on_macos do
    url "https://github.com/NoahNxT/Toggl2Timeshit/releases/download/v1.9.0/timeshit-macos.tar.gz"
    sha256 "d028d7b79bd8c5ad7245dae4917335b24e71919ae3366b8575bdd84455a768f1"
  end

  on_linux do
    url "https://github.com/NoahNxT/Toggl2Timeshit/releases/download/v1.9.0/timeshit-linux.tar.gz"
    sha256 "e2003fb3c926fd53e1974099ce5b74511bd37ea7a004c6ae15a1fef2eeb62b86"
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
