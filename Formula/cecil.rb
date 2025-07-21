class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.50.3"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.50.3/cecil.phar"
  sha256 "d53e94310fa3479930868a530f2795ad6958a25af3fed3c74136d5ed1f3e81e6"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
