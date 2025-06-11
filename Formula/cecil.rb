class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.50.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.50.0/cecil.phar"
  sha256 "71e10bf8e97f74c28b7a92cc2642cdb6e3c081d96bb7ab1370e413bcad7b5c8e"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
