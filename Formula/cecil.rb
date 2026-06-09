class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.104.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.104.1/cecil.phar"
  sha256 "38e1abce7a74a946097cf767b4b53f1fa2f8bafcfd44f1c650b859961be72cc3"

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
