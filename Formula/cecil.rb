class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.20.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.20.2/cecil.phar"
  sha256 "a13d15e6266b25e7bb59e08d20ab0c0e13f588d9df79aea2ca01f6d75e940c9b"

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
