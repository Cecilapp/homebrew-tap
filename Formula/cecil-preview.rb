class CecilPreview < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.86.0-beta.8"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.86.0-beta.8/cecil.phar"
  sha256 "905e1920a77911b72174ce2ccd4fcb9ef71bb1b4a8e99050f1e8e4d4f67474c5"

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
