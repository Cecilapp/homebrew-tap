class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.30.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.30.2/cecil.phar"
  sha256 "3b9fe7ece20d8cce9d0eee8c321fabe31b0d99d31d7e9844a9927f83cd9775ca"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
