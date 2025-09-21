class CecilPreview < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.67.0-beta.1"
  url "https://cecil.app/download/8.67.0-beta.1/cecil.phar"
  sha256 "86fcea805fbf76dc3df3d6026fe90581e8b4343fed79a5ddebb3728eb02864e8"

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
