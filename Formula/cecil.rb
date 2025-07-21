class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.51.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.51.1/cecil.phar"
  sha256 "35d482549ed2839c606646b93208de6462e5bc5c6282b052c50502e39c294ad0"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
