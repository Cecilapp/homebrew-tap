class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.21.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.21.1/cecil.phar"
  sha256 "34bdbf9731df16e8a225039014146153cd4fbf73c3d9304902d77fa702b765e6"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
