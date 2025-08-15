class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.55.4"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.55.4/cecil.phar"
  sha256 "e37c3bd353c8a690d7ec3eb87a3260d2e9f115f9d4e5da62e9603c68668f17fd"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
