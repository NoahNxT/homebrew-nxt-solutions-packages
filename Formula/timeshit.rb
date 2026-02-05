class Timeshit < Formula
  desc "Toggl Track to timesheet TUI"
  homepage "https://github.com/NoahNxT/Toggl2Timeshit"
  version "1.4.0"

  on_macos do
    url "https://github.com/NoahNxT/Toggl2Timeshit/releases/download/v1.4.0/timeshit-macos.tar.gz"
    sha256 "ee713e3079a9f7f85facd3f94415bbf8d1a899d19c89b271dd9e5ccc11d5faf1"
  end

  on_linux do
    url "https://github.com/NoahNxT/Toggl2Timeshit/releases/download/v1.4.0/timeshit-linux.tar.gz"
    sha256 "e043771b6ba431eb56ede0c3b9257e47e106a3f288a20be99d5839e0a80fec99"
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
