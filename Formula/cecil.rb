class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.61.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.61.0/cecil.phar"
  sha256 "63266354d46f382341673d0da86afe3237b0202f191e632bdd60175e1f5092ed"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
