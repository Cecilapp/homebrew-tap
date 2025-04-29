class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.39.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.39.2/cecil.phar"
  sha256 "28ac8237d667732aca7063da68cabb1370c39e5e6606f9bc02612b317ed2e133"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
