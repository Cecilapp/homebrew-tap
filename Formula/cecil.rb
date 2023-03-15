class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.32.5/cecil.phar"
  version "7.32.5"
  sha256 "02847a6e116347020de1ce142c3e4c33f1a0980db8adffed7d1421cc10c95068"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
