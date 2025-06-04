class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.47.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.47.1/cecil.phar"
  sha256 "5e97376996c0fdc317125805574cc817572d2dc0441efd3d837e09c4d37eff2f"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
