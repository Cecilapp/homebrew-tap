class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.1.6"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.1.6/cecil.phar"
  sha256 "c419c53ce518f2d8c92002c16f3d36ec41aae3681726b3d5b3d56e3fa91a7e8b"

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
