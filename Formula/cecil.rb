class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.50.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.50.2/cecil.phar"
  sha256 "6dcd6681220fcce040cd025fbc9fe54631504a6014b5975297736fe2d35084f0"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
