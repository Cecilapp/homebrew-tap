class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.46.7/cecil.phar"
  version "7.46.7"
  sha256 "2903c0b36d8a106a68636abc7910b2b60883b8fb5edffd31b55d1d26220b5b74"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
