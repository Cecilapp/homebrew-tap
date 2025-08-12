class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.53.6"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.53.6/cecil.phar"
  sha256 "70f4620b5345b09c7f012b3c2c97fb9930ed15a2a8748109d25751c6acf45c44"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
