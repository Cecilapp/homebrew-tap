class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.22.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.22.2/cecil.phar"
  sha256 "35408daae8ec91d93708d24f608819791cb00e360ccd02e6aa2c87f60fa39cb1"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
