class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.111.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.111.1/cecil.phar"
  sha256 "cd3e8911f52205b4d7b19e94826d2006c3c274f47df511f020f4d34f4e1a04b0"

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
