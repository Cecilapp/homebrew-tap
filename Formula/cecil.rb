class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.55.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.55.1/cecil.phar"
  sha256 "f527e38c72644dbf50ad2a386bb2e424f30a743ddceb1d9fda559503b0f0d0fa"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
