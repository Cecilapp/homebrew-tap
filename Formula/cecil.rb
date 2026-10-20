class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.20.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.20.1/cecil.phar"
  sha256 "ff5e7bbeb0d2e7c9538bb03e1504393d51ce5ff4503681792a6d17f1f49f1455"

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
