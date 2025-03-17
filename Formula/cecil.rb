class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.34.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.34.0/cecil.phar"
  sha256 "5ce5717f0f3c5d2c877e094c17193e9d90f484123fab8c03e63084eef9331d62"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
