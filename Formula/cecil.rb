class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.24.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.24.1/cecil.phar"
  sha256 "dd3c9e706ae499bc722ca6fc8552d36fe6b80c20c66f154d09527529c10c4c6b"

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
