class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.57.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.57.0/cecil.phar"
  sha256 "f3c06e74a389063047ebe6f526aac19175119aa0bc27c5bfb5e6e6a8cf108eec"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
