class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.32.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.32.0/cecil.phar"
  sha256 "a4b1e6531495ba1828ebfc2c34a427c6ce0a0103d4b95bda2886b395951dce6a"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
