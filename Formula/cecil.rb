class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.29.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.29.0/cecil.phar"
  sha256 "40166cb4c91d0e33fa138d903f5f82a73420c37981f90afd9271f4b4011756be"

  #depends_on "php"
  uses_from_macos "php", since: :monterey

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
