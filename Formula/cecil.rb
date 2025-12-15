class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.75.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.75.2/cecil.phar"
  sha256 "88dee6c1724d1848d218171a3d43a244a8c2776e329d0e2aa1c4ee99e517e26b"

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
