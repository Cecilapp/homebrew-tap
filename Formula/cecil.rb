class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.65.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.65.0/cecil.phar"
  sha256 "4614afaf9a769ac0d209392647f9fbeb271c02c85a61472c6d434612c11c6c97"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
