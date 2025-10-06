class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.67.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.67.0/cecil.phar"
  sha256 "ba230144c95724c27d48942101759f4b450642c1b07686f62bcc8ca9c13b107f"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
