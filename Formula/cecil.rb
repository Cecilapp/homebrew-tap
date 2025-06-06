class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.48.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.48.0/cecil.phar"
  sha256 "67382df37e40ae157234a66b0161c6ead0a8a5db51e1458ed8ba5fd973760ab3"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
