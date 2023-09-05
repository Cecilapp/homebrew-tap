class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.46.10/cecil.phar"
  version "7.46.10"
  sha256 "97ef9068796f2dfd71198d2f12f2d09fc196d3222a2f83a96e3bdde85b2454fb"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
