class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.80.4"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.80.4/cecil.phar"
  sha256 "ca0b4b1edcb54e5ce20a4a4833b2c2bd466f3bf75f7fcabbfad591937a799c60"

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
