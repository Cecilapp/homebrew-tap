class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.24.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.24.0/cecil.phar"
  sha256 "1d64646cbb21a16b90c484286fb1978047a60ec3f2b5ca6a43af96bf3ff77422"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
