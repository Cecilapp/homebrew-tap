class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.6.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.6.1/cecil.phar"
  sha256 "917bcca2e3cc956accd7b81b64d69d7990d6a7f787940c4296bb86135d589770"

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
