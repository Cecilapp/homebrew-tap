class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  url "https://github.com/Cecilapp/Cecil/releases/download/8.5.1/cecil.phar"
  version "8.5.1"
  sha256 "5877676b59f98a5e0058df2c0c0c10dfaf6dda3dbec1e4385e8c6ff38b044588"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
