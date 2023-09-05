class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.47.0/cecil.phar"
  version "7.47.0"
  sha256 "e74e41956c11d505acad94b47df113015f3230fa678ff11c408a47d9835a5945"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
