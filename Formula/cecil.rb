class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.54.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.54.1/cecil.phar"
  sha256 "577e141fdd42c11d5af0104dad64ad834f94f5ed81acb00f4c967d1ee1577f6f"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
