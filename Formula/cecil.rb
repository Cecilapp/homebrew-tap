class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.99.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.99.0/cecil.phar"
  sha256 "5a43d3b1545f14717a4471f0b58c0d81d4f585a22b1e4922615015262467634c"

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
