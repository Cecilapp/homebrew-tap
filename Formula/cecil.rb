class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.42.4"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.42.4/cecil.phar"
  sha256 "6de20674bc6e2d95155807138b6941f65fec89959c6fff45e42ceec4b5fd4e36"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
