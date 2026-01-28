class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.79.6"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.79.6/cecil.phar"
  sha256 "d0c0e2e426c1aa4053b04d93e462c0c4b9d78674e31730646e9c64d6d3eebd0c"

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
