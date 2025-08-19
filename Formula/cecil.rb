class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.57.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.57.2/cecil.phar"
  sha256 "c4a0ec53c4a939a3b44ffe2e45d3cb739437f5b38919846738a37a6858ed710a"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
