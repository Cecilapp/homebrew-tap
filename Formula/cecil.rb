class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.53.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.53.0/cecil.phar"
  sha256 "57357ec9d098a2a4be54ae0db186d25619844decb9c91997492d09c0f92f31a2"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
