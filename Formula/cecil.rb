class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.39.3/cecil.phar"
  version "7.39.3"
  sha256 "14fdc65832ffe6ebc7855c69848e571008b04020540bb6e4e284702da27cd8cb"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
