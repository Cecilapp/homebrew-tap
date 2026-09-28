class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.3.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.3.1/cecil.phar"
  sha256 "e78605fda99be204713e88e5eee8d6ef7b88c3f872638498a177eef9e2803677"

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
