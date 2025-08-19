class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.57.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.57.1/cecil.phar"
  sha256 "fa7f11dc5e734a8400ad399619876366650701731d3fc266ddd26bd4764b14f8"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
