class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.55.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.55.0/cecil.phar"
  sha256 "58d3f8b72f05a12a97970b12480a1b5e5201dc7bfa3e430a65e31c1b6bb8fc33"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
