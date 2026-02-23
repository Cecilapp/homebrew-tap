class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.85.3"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.85.3/cecil.phar"
  sha256 "ce88d6948ef458af329afa15e10fc3d4a4f8ea9cabb70beaac723d2f2143747b"

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
