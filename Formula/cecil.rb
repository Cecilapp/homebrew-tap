class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.42.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.42.2/cecil.phar"
  sha256 "ebe9c3892fcbd6866b0ec8c00f56c8547e0df1c810907c16f2d3eb32b16874d0"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
