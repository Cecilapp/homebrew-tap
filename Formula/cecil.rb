class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.1.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.1.0/cecil.phar"
  sha256 "db408a56fdbc0dc3a4a9336720c3995fea4b4b5e916df3daf09ab9f559ab228f"

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
