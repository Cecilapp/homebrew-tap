class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.0.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.0.2/cecil.phar"
  sha256 "38b78fe174e922d8db6e9de75bd8ad99eeea813ff90d37b7d9954430e7bc818b"

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
