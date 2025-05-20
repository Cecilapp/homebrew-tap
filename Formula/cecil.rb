class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.44.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.44.1/cecil.phar"
  sha256 "57ff1f76be06e2d2ea54b7957de2b5d0a3e56dc1dec5417de0595a9724d76e28"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
