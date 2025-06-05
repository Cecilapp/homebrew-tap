class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.47.8"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.47.8/cecil.phar"
  sha256 "ca527608b8a9c00d9804f8811e05ccdda1205421119c49c03bfd485a210ae6e2"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
