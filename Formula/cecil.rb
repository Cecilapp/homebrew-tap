class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.55.7"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.55.7/cecil.phar"
  sha256 "eec756af046851c64a6ac2a72ba8aa86a1fa7bf47fd60074b83ba1b8f3aa8ee9"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
