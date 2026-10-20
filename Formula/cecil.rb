class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.21.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.21.0/cecil.phar"
  sha256 "1740528d97fedb0bcfe2c34ccebb5c6dea121cc800ee4b4f2781239183e86bc6"

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
