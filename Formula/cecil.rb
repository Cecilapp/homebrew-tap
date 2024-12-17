class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.20.4"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.20.4/cecil.phar"
  sha256 "c27a21028d8d68af051a941a37c7b9564de839cd7e0ba292c2a81e85327e715b"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
