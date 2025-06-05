class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.47.10"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.47.10/cecil.phar"
  sha256 "08a554c47d48ae7ac8224e4106abf1a2c62a309b5060b171e794ba35f98881dd"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
