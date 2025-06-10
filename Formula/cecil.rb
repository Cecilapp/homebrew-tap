class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.49.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.49.0/cecil.phar"
  sha256 "c87adbe001da532f07909de507e148cb8b597b381df001735735b1ccf5f875c6"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
