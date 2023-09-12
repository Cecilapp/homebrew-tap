class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.47.1/cecil.phar"
  version "7.47.1"
  sha256 "b7982bf57255b9d2de9d7941c065032aa8586c7d0744314bd76441aeae01c59a"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
