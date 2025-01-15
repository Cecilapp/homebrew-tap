class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.23.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.23.0/cecil.phar"
  sha256 "6e706b719238dd12d1d9e6f6b44f5ca5743dc70b265a12705db7dfaced81bb1f"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
