class CecilPreview < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.66.0-beta"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.66.0-beta/cecil.phar"
  sha256 "a09658d6503bb0a6573771af6139697f875e43f9a98cd9c88d61a089ef84020e"

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
