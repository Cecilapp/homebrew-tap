class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  url "https://github.com/Cecilapp/Cecil/releases/download/8.1.1/cecil.phar"
  version "8.1.1"
  sha256 "395bd8a6c2091ab4d6738ec6e9d338b7a4c4dda8d2e7c5530241cb533ddafecd"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
