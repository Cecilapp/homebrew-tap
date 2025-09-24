class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.66.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.66.2/cecil.phar"
  sha256 "18b10ccb47a5021fd92ca4b36da313d36f0666d7575125d742b05d7d0cb46c4c"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
