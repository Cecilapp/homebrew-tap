class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.64.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.64.0/cecil.phar"
  sha256 "be613815f3274bbb81e1045bde08b6da3f65f533cd7cedb754a60dcfec1afdbb"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
