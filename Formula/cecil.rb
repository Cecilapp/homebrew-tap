class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.79.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.79.2/cecil.phar"
  sha256 "72422d8dc5d4ce3f591e819de1a60fb293791c1507f7d88e3d2ba5aa47d814d4"

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
