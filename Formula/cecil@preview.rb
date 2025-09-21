class CecilPreview < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.67.0-beta.3"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.67.0-beta.3/cecil.phar"
  sha256 "3245f0f56322e8404d72fbb3c2bf87a9a56a0db6f7b059c15ccdcd4e72f2fe01"

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
