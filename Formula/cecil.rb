class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.15.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.15.0/cecil.phar"
  sha256 "dc026ae5c3f909f9822b95d2ae96c9d81aaf6b8efe1efd3469b8d96daeaf07f0"

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
