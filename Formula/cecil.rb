class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.47.4"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.47.4/cecil.phar"
  sha256 "781a1a0cc5668061e940b854d342169576d6da70cdb4820fa0ae163303e729da"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
