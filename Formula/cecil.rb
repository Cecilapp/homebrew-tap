class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.66.3"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.66.3/cecil.phar"
  sha256 "1a56e1987760c4c4f7cd3ef9d06d185f7f2e714e9c9db81d86dc75401c14c153"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
