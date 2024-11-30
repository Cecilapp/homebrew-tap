class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  url "https://github.com/Cecilapp/Cecil/releases/download/8.19.2/cecil.phar"
  version "8.19.2"
  sha256 "aaea97f22652b53f3d3a0c7fd752c0e19a9a72c3b14ca3dcc18e1410dc36a67f"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
