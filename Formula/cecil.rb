class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.85.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.85.0/cecil.phar"
  sha256 "702958aa49d738b07f05c0eca28ddff20e2205cf1c05b49760d7f8432a8cfc09"

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
