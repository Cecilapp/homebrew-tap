class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.52.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.52.1/cecil.phar"
  sha256 "888f5338d0dfbe850b87b982ff23c8eea7dcc1165a456ed88176c1ee62f073a2"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
