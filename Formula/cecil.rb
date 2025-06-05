class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.47.9"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.47.9/cecil.phar"
  sha256 "4d502d77db37b6c417299f891d13760c8a0f2679c16a1abbebebd7c3a87c6e25"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
