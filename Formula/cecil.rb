class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.29.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.29.1/cecil.phar"
  sha256 "33546641f0bd8809ef8426ca2fd684c2ae245e65ca945ab06fb8282669877cc0"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
