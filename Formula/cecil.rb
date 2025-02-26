class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.32.3"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.32.3/cecil.phar"
  sha256 "688e9acaf51159c22bf356e3d2f2c40934b0398051c4e7a94cd4826965da673f"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
