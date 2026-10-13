class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.10.3"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.10.3/cecil.phar"
  sha256 "5f83f82c13dff230dc34e652c98b37d103e272f51fb24eebb2af1b8abb9839dd"

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
