class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.116.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.116.1/cecil.phar"
  sha256 "f9ad7ffcac5b81d5a49bd048ca735bdc21a0eedb4a5215016323ed082e5069f7"

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
