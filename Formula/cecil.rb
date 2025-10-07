class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.68.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.68.0/cecil.phar"
  sha256 "4df18eb797748ee20c1d9eb578c7c8221ddaa50b54a5fb66f62b7adc1ae46b25"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
