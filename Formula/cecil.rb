class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.51.3"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.51.3/cecil.phar"
  sha256 "3705f9b5f25cf4f6acd971c3c665fbb15b6044132d354bf2ccb3b7614f59728c"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
