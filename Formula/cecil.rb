class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.42.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.42.0/cecil.phar"
  sha256 "e3eeded7895f953e2e889eabb18b06fd9d5e7aa87257dd30ddde4a0e430d1690"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
