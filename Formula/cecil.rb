class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.20.5"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.20.5/cecil.phar"
  sha256 "a05a5841f513526f471a5debde51fe3d8bf76ccbf25120dba33bc1c0445444f8"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
