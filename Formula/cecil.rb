class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.17.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.17.0/cecil.phar"
  sha256 "44d533e77627862ea242fdda168866976f40a409b7ed060497df67d9dd77a879"

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
