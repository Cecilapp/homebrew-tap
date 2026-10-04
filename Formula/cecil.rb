class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.6.3"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.6.3/cecil.phar"
  sha256 "12b7e603e23bb101ef64722d9a327d213623de4f2a382ddab98643a2821a524c"

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
