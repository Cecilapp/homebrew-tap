class CecilPreview < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.67.0-beta.5"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.67.0-beta.5/cecil.phar"
  sha256 "08df7f3c18ff832eb184d6bfb504de179ea86cae8ecae1278f1be7ac2804af94"

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
