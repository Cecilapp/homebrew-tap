class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.39.9"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.39.9/cecil.phar"
  sha256 "37a34cf50bcdfdee2712915e7fe02bb86e6d141c0df6a649b017681dc9d8a903"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
