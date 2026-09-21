class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.1.4"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.1.4/cecil.phar"
  sha256 "ff9f68c9738fca302dbf498656bc74fd7ee23145f9c8ebba0bc41a576ad0fbca"

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
