class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.53.5"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.53.5/cecil.phar"
  sha256 "ffe1cbcd21607fb25237109799750885a7af38104bf78f4dd8c9c3c3d113b026"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
