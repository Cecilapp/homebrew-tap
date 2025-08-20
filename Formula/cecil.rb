class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.60.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.60.2/cecil.phar"
  sha256 "a979be61ffbb920b65bf175e7fb1e722f87b717f3517c69394f9a4db084108dd"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
