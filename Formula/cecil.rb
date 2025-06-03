class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.46.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.46.1/cecil.phar"
  sha256 "4ded532dbdffc2e62b667004f2091c085ad72638738997694d5a565513e13938"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
