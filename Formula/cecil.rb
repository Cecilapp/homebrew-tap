class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.30.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.30.1/cecil.phar"
  sha256 "fd76f2b85c8779659008d1ab45ab1cbb866302017a5534910205c42138241853"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
