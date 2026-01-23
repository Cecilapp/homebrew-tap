class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.79.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.79.1/cecil.phar"
  sha256 "a6fcb19f58e14f485cf38fec7fb2ce28f0991acb36b2d914194a62dc07330f9d"

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
