class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.63.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.63.2/cecil.phar"
  sha256 "2a38586c28f86f3ed01c1ab3294151217f98d986dd72e7c0370e88c3986e8c85"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
