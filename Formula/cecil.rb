class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.61.5"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.61.5/cecil.phar"
  sha256 "929f5b31d9b6e0b5ce95d7cadaf1396306b138a8482e8bb4118772055899096b"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
