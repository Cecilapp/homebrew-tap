class CecilPreview < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.86.0-beta.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.86.0-beta.2/cecil.phar"
  sha256 "c3ec32d132e0ab6a86585290dbdfe80ecebaa6789df53f7400c9fbff25688c0f"

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
