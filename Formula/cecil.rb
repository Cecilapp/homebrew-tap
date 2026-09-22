class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.1.5"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.1.5/cecil.phar"
  sha256 "630a0a1c4df5a5fc36120258c0a0fdcdb331fd105449f9940c5327ba81e91941"

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
