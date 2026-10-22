class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.22.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.22.1/cecil.phar"
  sha256 "a9689d7de3767c9cbfaf6d025c5f6c3b315db74345d83b2580c547517946215a"

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
