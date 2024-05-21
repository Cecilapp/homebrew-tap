class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  url "https://github.com/Cecilapp/Cecil/releases/download/8.12.6/cecil.phar"
  version "8.12.6"
  sha256 "c0ee543ff4c8e1b07d190635f3f5d0cafab0b698daddfc20cc706709d2e66aaf"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
