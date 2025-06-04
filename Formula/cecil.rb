class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.47.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.47.0/cecil.phar"
  sha256 "daa815e14d4c8173636aa8b19f3b59bbe31a832cf47dc0a036b72e788a491a27"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
