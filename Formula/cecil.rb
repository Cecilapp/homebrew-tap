class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.106.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.106.2/cecil.phar"
  sha256 "2f76aea2f5936c3c04b786c96cf6e9cf83f0b06757903632394d7d3f0322a837"

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
