class Timeshit < Formula
  desc "Toggl Track to timesheet TUI"
  homepage "https://github.com/NoahNxT/Toggl2Timeshit"
  version "${version}"

  on_macos do
    url "https://github.com/NoahNxT/Toggl2Timeshit/releases/download/${tag}/timeshit-macos.tar.gz"
    sha256 "${mac_sha}"
  end

  on_linux do
    url "https://github.com/NoahNxT/Toggl2Timeshit/releases/download/${tag}/timeshit-linux.tar.gz"
    sha256 "${linux_sha}"
  end

  def install
    bin.install "timeshit"
  end
end
