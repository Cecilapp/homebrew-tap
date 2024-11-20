class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  url "https://github.com/Cecilapp/Cecil/releases/download/8.18.1/cecil.phar"
  version "8.18.1"
  sha256 "39ba22b7d7503701849b9d8e6fad115a41b6e0dc6cf0ac401a86df93c61e1f99"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
