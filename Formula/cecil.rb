class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.97.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.97.0/cecil.phar"
  sha256 "b7d4e6bd3ab932c11dfe048cd0c656cd2c6948e96ea822c8c2e5c1c7fce6f35a"

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
