class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.31.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.31.1/cecil.phar"
  sha256 "294325bd0ef32442c02c899a5c38551731146a55c8a43bee0bdc90a3e7ac503d"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
