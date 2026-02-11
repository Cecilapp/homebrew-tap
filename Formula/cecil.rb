class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.83.3"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.83.3/cecil.phar"
  sha256 "f3955ccd0a48349feb5eb3d241c9c338406e1ce043f0b341391a5e983c7b0ee8"

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
