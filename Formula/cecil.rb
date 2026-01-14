class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.77.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.77.1/cecil.phar"
  sha256 "944f704c1a071bff163f252a573d413c387c1936cd17571d7a1b58a4b17d9366"

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
