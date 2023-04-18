class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.36.1/cecil.phar"
  version "7.36.1"
  sha256 "2c166d5ff182e8049033f542554e6c6583825d4fde95acee164a0b00cef88b3b"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
