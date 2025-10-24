class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.69.4"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.69.4/cecil.phar"
  sha256 "0ccb8ec1581292f64cae8dc7fa763775ea338f2d252aefb027680afa7f8f9996"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
