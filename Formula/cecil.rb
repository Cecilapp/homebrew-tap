class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.4.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.4.2/cecil.phar"
  sha256 "5f22428db7796e302db864f0e46a3e63293d6c49055ab1211745cddcbe0b3047"

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
