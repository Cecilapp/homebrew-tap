class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.117.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.117.1/cecil.phar"
  sha256 "e8d8d2e00b026490aaaf0f2a868423de67f3710a8a2c4dbd8814357c4cabf70e"

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
