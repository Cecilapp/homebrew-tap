class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.74.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.74.1/cecil.phar"
  sha256 "b8bf3d80cd3cf9a55f47f0d68b129382917804376ebbe25edeca9574af4ea2d4"

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
