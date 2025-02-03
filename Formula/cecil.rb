class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.26.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.26.1/cecil.phar"
  sha256 "db1ccd45e79e4fc1dece62e69d12cbe0bd019213b47df98973fa12d791aececf"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
