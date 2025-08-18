class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.56.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.56.0/cecil.phar"
  sha256 "0ba9f5de5fb234e088d0c07dc6d595849a95cc4660d9f441f6b0d0124d55c4a1"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
