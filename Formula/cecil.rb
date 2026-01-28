class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.79.3"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.79.3/cecil.phar"
  sha256 "dc411e0f2a0266b41f45ceba7aa7c81b249f29ebe7c3c2ea66a991c6e1f82471"

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
