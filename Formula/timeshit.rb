class Timeshit < Formula
  desc "Toggl Track to timesheet TUI"
  homepage "https://github.com/NoahNxT/Toggl2Timeshit"
  version "1.8.1"

  on_macos do
    url "https://github.com/NoahNxT/Toggl2Timeshit/releases/download/v1.8.1/timeshit-macos.tar.gz"
    sha256 "dce2c0776cc2f7dfd7d2b48a9d531ccc548e8e9f9f54e04a52a0781e6237f4b3"
  end

  on_linux do
    url "https://github.com/NoahNxT/Toggl2Timeshit/releases/download/v1.8.1/timeshit-linux.tar.gz"
    sha256 "b6b7727441fb6c46e7e0d03eab56894baf6b63858747044f9d3a7f460682c8cf"
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
