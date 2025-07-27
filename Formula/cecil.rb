class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.51.4"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.51.4/cecil.phar"
  sha256 "c2525f60e876d80665835d27f08352c97904942002e4bdd839adea7864c6f803"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
