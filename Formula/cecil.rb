class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.39.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.39.1/cecil.phar"
  sha256 "b337e5e770529adf2a9712e732f3eadf3fa4b00f15e2f3e67493c17ca899d76a"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
