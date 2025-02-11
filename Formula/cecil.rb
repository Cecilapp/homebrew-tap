class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.29.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.29.0/cecil.phar"
  sha256 "36915ead0f3b4efb69c2aaae7ed045804bcb991b872e6d8c3d154eb491868d8d"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
