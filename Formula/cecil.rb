class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.25.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.25.0/cecil.phar"
  sha256 "7005cf0eb7b71b414557966866900fe4128ac07f7d7fbb449c9a7ab8da51e701"

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
