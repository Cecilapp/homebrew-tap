class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.53.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.53.1/cecil.phar"
  sha256 "b2f016ba3b4afbaed6672e4880b5432f2259c58d6da2521d88e81fbbc12876a9"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
