class CecilATPreview < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.86.0-beta.3"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.86.0-beta.3/cecil.phar"
  sha256 "1d38f7370b0a8d2d31a7ff3719944dfd2f69c654a5934fb6fd26c70308505b87"

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
