class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.40.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.40.0/cecil.phar"
  sha256 "2c7f1f8ce19ed6b67943d426117b5f44d8ecf31e0a01de04fc95fe8737bf1971"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
