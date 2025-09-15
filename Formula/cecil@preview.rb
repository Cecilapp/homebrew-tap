class CecilPreview < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.66.0-beta.4"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.66.0-beta.4/cecil.phar"
  sha256 "abc859cab1705bbd8277a59fa2a56542683b9243343cf98597bf4ee60f5b2fe7"

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
