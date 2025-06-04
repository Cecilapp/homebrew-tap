class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.47.7"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.47.7/cecil.phar"
  sha256 "d933872fcd489de71ff3bf8399e3238e9ae665371b8392d14eada6970c95522b"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
