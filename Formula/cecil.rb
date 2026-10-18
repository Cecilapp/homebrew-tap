class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.17.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.17.1/cecil.phar"
  sha256 "18aad39d9260881305ed9372d599e08a1051834112bcd889696f366355d9236b"

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
