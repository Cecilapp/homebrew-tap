class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.87.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.87.1/cecil.phar"
  sha256 "8e1e0deb75d03f82fa09884cdfe1a3e493b30256c12d82c224f79f50ec7d1947"

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
