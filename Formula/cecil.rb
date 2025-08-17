class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.55.14"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.55.14/cecil.phar"
  sha256 "c9d369b334a34de52273315035b7fe6c69d8c605bfaa43dbf98413dbe9b0537b"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
