class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.72.3"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.72.3/cecil.phar"
  sha256 "da215f60be81cc03b05c614b00189ba93368aee40d3ab05c4dd017facd3b1290"

  #depends_on "php"
  uses_from_macos "php", since: :monterey

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
