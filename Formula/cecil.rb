class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.112.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.112.0/cecil.phar"
  sha256 "f63e733ae5bb254a6990252ab553eb9f1380272d24fc91360c8c81b5957040e1"

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
