class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.104.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.104.2/cecil.phar"
  sha256 "2a4f7d11c5e3a23d1926f00c6d52e1a652ec469cf30f76b82073b82b36d878e2"

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
