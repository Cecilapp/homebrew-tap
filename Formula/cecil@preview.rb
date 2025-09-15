class CecilPreview < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.66.0-beta.3"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.66.0-beta.3/cecil.phar"
  sha256 "dba4b550ad87912749b0f3953986b7f078d86658a3cae89c5d8b0e50eebb93e1"

  keg_only :versioned_formula

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
