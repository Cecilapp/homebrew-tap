class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.30.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.30.0/cecil.phar"
  sha256 "b0a86cd17a926f8fd871a3a223ae38a7af8bb6e02c5b00dbb9309598941f608a"

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
