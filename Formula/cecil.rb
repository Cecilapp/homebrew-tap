class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.70.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.70.1/cecil.phar"
  sha256 "0bd8dda0bd0f9310700a5e21c6ab20167909d971b924b32f3067ce9087f1cb69"

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
