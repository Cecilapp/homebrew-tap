class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.37.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.37.0/cecil.phar"
  sha256 "a86cff9712c0568c00bbe10cb3308d8a52fd08d93431ee3f76de469659f6f403"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
