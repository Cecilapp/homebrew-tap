class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.37.3"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.37.3/cecil.phar"
  sha256 "b191584afb5db56d7990e7aca5b27777c0b7ccac16fae50cc6a7369d3503b133"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
