class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.79.5"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.79.5/cecil.phar"
  sha256 "ea490e4eae23c0c1f88d5b1b17e760be007121be10646d96c72b80ce6f073328"

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
