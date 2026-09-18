class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.1.3"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.1.3/cecil.phar"
  sha256 "65d4d9ea6ec42acb1bfde6cae14635faab2900220fd02d7dc9e3b40c485a833b"

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
