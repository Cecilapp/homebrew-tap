class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.52.3"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.52.3/cecil.phar"
  sha256 "3e2436625967eaccc1a4e7264aa218b8da36802c1e66f8c9edf927f6efd6cafa"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
