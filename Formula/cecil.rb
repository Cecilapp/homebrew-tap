class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.58.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.58.1/cecil.phar"
  sha256 "1292e5e8330690dbd273bfd53756a358ff46cd121aa37fe99f92fda962781ff9"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
