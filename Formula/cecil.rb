class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.53.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.53.2/cecil.phar"
  sha256 "243d681fbbcadbf1aea6bd8a4f96704aa56a6a258cda5a402833a8757fa43524"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
