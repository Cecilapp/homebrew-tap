class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.33.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.33.0/cecil.phar"
  sha256 "bf6a6469e79552b73a9e80fd2dfdca3e742aa7ae37c77b586f1d0d102f002b8c"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
