class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.22.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.22.0/cecil.phar"
  sha256 "d8165c2ba871dc48fcbe843543c67656e810fc519d0a0ca9e964799d503c3359"

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
