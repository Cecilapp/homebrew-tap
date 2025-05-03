class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.39.7"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.39.7/cecil.phar"
  sha256 "1ff7082944f5ed12a887cef2f7af368b12cf00febad2d06a9953d11f00703918"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
