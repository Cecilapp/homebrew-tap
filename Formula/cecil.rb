class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.34.4"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.34.4/cecil.phar"
  sha256 "c00aef42c7dab2254168f1b8d4c79aa0713f1be94a64a3fd5baa8ca0a8c9dd41"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
