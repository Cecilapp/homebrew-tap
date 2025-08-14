class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.55.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.55.2/cecil.phar"
  sha256 "1c91c9398dc970b1592ca19c7fef3edb8cc3ac309733d01169b29eebfdebedb1"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
