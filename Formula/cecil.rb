class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.76.3"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.76.3/cecil.phar"
  sha256 "406a07b2a6ab4fb0b387d5f9e41bf4c3e0a9040820bad5a4496bb9abbd4e586d"

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
