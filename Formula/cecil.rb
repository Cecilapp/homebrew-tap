class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.39.0/cecil.phar"
  version "7.39.0"
  sha256 "c3d87bfc5e71bdd138b45c2a7e6427ea13850f1b045e46e3e2c52257a529117b"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
