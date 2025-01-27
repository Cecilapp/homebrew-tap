class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.26.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.26.0/cecil.phar"
  sha256 "f6c6890a33c040f91df94d3250f894fbbe81cd4e33290e4919ce2a79dd9f9d8b"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
