class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.9.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.9.1/cecil.phar"
  sha256 "fed47e04d044d7f7a79da330392a0b8902216b8f9067f01b20f240017cfb103a"

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
