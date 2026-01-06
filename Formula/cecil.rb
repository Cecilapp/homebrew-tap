class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.76.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.76.2/cecil.phar"
  sha256 "b24cec3613f73c5905bbf14b24d774ae346509b2d99fc55c3e1b03ee10d6bbb3"

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
