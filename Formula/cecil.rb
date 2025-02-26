class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.32.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.32.2/cecil.phar"
  sha256 "e372926ffe6b97351c8e215180585ac273bca41616dd272b86116f72f0c04c81"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
