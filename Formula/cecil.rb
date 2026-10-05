class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.7.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.7.1/cecil.phar"
  sha256 "0d814b190725dbc383ab69ee5b16e36ff24d8b0b430e65a33ddfd54f56fe2356"

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
