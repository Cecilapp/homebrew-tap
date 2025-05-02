class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.39.6"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.39.6/cecil.phar"
  sha256 "fe373dfe9e0af7c0a3c771086ee1ffb004134c87c7d9a69e42d68db7de96d09d"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
