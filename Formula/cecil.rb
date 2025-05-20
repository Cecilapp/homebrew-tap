class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.43.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.43.0/cecil.phar"
  sha256 "e6d9dbfeddb463339d0b6179bd1028f0bf09c1e48696701f6474684aba6e39d5"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
