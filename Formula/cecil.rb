class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.55.5"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.55.5/cecil.phar"
  sha256 "a3479825e71102d7de976e098995b8ea912a9e4bb7886d1b276320bdf0451802"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
