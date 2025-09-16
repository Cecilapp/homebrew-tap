class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.65.3"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.65.3/cecil.phar"
  sha256 "add4204244bb71f3c3446ecce4b45c312fa3c5bc6c640fb687d50c3a59c7c671"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
