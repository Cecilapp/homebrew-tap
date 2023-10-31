class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"

  url "https://github.com/Cecilapp/Cecil/releases/download/7.51.2/cecil.phar"
  version "7.51.2"
  sha256 "a15e93a690a4ad341cee7bc195b1784a7fbc65ff18c8d6735b3185e0f4c73f8a"

  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
