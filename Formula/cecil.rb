class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.42.3"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.42.3/cecil.phar"
  sha256 "4dffdc595e5e3beb09198f3dc6f1c43dab99fd3b2e0bd4dfc7d68a28dc2189dd"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
