class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.69.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.69.2/cecil.phar"
  sha256 "f12939da5a7cbcb5e28c90952405d279d667e436df2fb86b80fb36efa2ea887e"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
