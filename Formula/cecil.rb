class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.53.4"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.53.4/cecil.phar"
  sha256 "59914ef17c5dbd62168267681eac38bed0e86ff991bf930e71392f970ab4c397"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
