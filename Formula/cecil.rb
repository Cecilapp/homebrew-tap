class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.55.19"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.55.19/cecil.phar"
  sha256 "d12d16458293229df61e1738b18a5eb6639c8cbd28db3ef108a7db03420926b8"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
