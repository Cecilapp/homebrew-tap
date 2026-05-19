class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.94.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.94.1/cecil.phar"
  sha256 "ac2a232184f71f9e954b1061e91c7ddcf5f6ab015125762169e177c25d4466be"

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
