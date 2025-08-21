class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.61.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.61.2/cecil.phar"
  sha256 "cfefe768ed4c0990dd6512c044bf4e7d7e89f2f5d2448f351938cb08bb92ddde"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
