class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.54.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.54.0/cecil.phar"
  sha256 "8f51f8bdb273cf78cebeebf028214ef8fd36e8e53a44352fa2d7c83aaf98ef7c"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
