class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.35.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.35.0/cecil.phar"
  sha256 "494f8e573d0fa77231f997faaad162130988ac3ac8945ec4fd57c055b13b7e25"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
