class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  url "https://github.com/Cecilapp/Cecil/releases/download/8.12.2/cecil.phar"
  version "8.12.2"
  sha256 "31c0f25af8bb09745ba09151bd91e35527ddd9cd52e1c07a967c0bb2c29932af"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
