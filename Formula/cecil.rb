class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.66.4"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.66.4/cecil.phar"
  sha256 "0e518a820436c9c6fa0a601af6673cc0d75506385598c465d7a8632e1197313d"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
