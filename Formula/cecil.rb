class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.55.10"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.55.10/cecil.phar"
  sha256 "f624faab9e17abf450f4cd7510cdb12f46665628ae4f51128aeb8509b978250f"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
