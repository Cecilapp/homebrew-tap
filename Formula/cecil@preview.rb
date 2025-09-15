class CecilPreview < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.66.0-beta.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.66.0-beta.2/cecil.phar"
  sha256 "c49bb7a5503926982806b0125ac88c763c3ac16b0f94a8586fcb600eebc9bca2"

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
