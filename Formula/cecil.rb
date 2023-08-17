class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.46.3/cecil.phar"
  version "7.46.3"
  sha256 "7e12190ebcec42a34f3cf923e5b5a396c2030a8057aa545e41897a77951fd403"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
