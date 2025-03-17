class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.34.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.34.1/cecil.phar"
  sha256 "44f8b30b318bd0c7325da19e44f0a0011592ac51ed193500f463b3b03fe1c884"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
