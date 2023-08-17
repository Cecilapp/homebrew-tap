class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.46.1/cecil.phar"
  version "7.46.1"
  sha256 "40d8c65c2dda19df49848fa7e12ab1fb3b5fe6a1ec66fcd57bb72323014ffabc"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
