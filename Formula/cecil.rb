class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.25.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.25.0/cecil.phar"
  sha256 "4a960a7636f9f4860faadd32a01d87620b1c02c2e9b98624a428c2932223cea9"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
