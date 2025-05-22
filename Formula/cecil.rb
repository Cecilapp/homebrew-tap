class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.45.7"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.45.7/cecil.phar"
  sha256 "b917f98b5cca4c7d172fe30abc8ab68b48e06aec4c00c8cbb42170000e075ec6"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
