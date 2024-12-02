class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  url "https://github.com/Cecilapp/Cecil/releases/download/8.20.0/cecil.phar"
  version "8.20.0"
  sha256 "bb9dd2b132aa943a69cc81d5d2f8bdb35ea9fe5d1b42c7e587ee16b3fc37ee68"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
