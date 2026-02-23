class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.85.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.85.1/cecil.phar"
  sha256 "52af926b77282db9a72d46b8aa222197fd2b822f3d2646bc55e590c5391a37bf"

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
