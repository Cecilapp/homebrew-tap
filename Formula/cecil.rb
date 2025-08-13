class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.54.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.54.2/cecil.phar"
  sha256 "32a7446902d0605fe7f405acafb053950cc1a8c5cc24b950a2075d5623364edb"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
