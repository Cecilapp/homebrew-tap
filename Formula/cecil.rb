class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.98.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.98.0/cecil.phar"
  sha256 "855ed4f8031d0514bbb4ef4cc388d545e4dfc8329463bb4e29a9a63cc0ea9aa5"

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
