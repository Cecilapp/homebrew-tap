class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.60.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.60.1/cecil.phar"
  sha256 "82086b9ce72fab5b6c44fe8c52cabf503f36e8f01798380e4d122ac8ff8ffaa7"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
