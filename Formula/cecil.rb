class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"

  url "https://github.com/Cecilapp/Cecil/releases/download/7.53.1/cecil.phar"
  version "7.53.1"
  sha256 "2a0f2673c7cdcb7ccce52c9948f79fbdea659a715f2aefd48718157047bb5697"

  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
