class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  url "https://github.com/Cecilapp/Cecil/releases/download/8.19.3/cecil.phar"
  version "8.19.3"
  sha256 "74dde10e18817d53922ed28594b96bcb201313382cc31cfd727e9b45730451ba"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
