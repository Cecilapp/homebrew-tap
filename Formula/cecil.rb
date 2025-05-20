class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.45.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.45.0/cecil.phar"
  sha256 "afe9f06621f1f7463a9dac8ef0b0bf7d5d22a1f03a06ecd1db9a2a952d3d6b32"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
