class CecilPreview < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.66.0-beta.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.66.0-beta.1/cecil.phar"
  sha256 "912f47e14513bffd816a38d9e39c74310d8a1eeaf79b6b2c066be586395629ce"

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
