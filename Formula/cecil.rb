class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.4.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.4.1/cecil.phar"
  sha256 "1e41e61cdc0b8127eb646624444358061e2210f71808c398576f33904446ac65"

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
