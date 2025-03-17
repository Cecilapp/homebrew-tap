class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.34.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.34.2/cecil.phar"
  sha256 "cf7bd6982b0bf4e80c9ab14e1aa775748f57bccf85ea38688cf72c634d7e021f"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
