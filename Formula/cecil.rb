class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.38.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.38.0/cecil.phar"
  sha256 "f6b7a40185b5f026dbc88666e8e7ccf1d484741f7604136abe8113d26e221567"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
