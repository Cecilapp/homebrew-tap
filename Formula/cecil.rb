class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.50.0/cecil.phar"
  version "7.50.0"
  sha256 "189b3c2150f7959733d8f5d7ba2923cfc28fb005f7bd00208b5e2665585c2bc2"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
