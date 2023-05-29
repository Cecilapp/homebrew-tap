class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.39.4/cecil.phar"
  version "7.39.4"
  sha256 "9b373125b9447497dd4bae3da998755882c7ab33bd4aca259108ceba989f1c5d"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
