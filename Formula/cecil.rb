class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.80.6"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.80.6/cecil.phar"
  sha256 "2dc118d86b38b7f4eca8e914abf6447c19ef6e5bd6d34b94a0e3fdcef5907542"

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
