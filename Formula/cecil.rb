class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.39.3"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.39.3/cecil.phar"
  sha256 "6d7c7f92cc3f1a65d669915f850c531ce07fa66b937336dc000b6f7c64858268"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
