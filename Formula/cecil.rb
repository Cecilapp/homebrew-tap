class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.35.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.35.1/cecil.phar"
  sha256 "77c9cd46a6ba47bb34bb49eddb296e3168630fa1bf60846861d3af47b3bdc89b"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
