class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.39.4"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.39.4/cecil.phar"
  sha256 "a4e00559f4330c9752fe3b9f3d73d4d75ecf6e3537ae95208fe723c4238528d4"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
