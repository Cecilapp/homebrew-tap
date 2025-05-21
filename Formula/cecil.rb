class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.45.3"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.45.3/cecil.phar"
  sha256 "c7ae4fd2f15c7da4a08abbeec91f4a1f00928d83443ba03c28445b24d1e3de82"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
