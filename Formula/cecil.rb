class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.45.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.45.1/cecil.phar"
  sha256 "ceac4b7bc457a04ab73e4a50490df3ddb7518ea514e5afc9edd543b16c641aee"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
