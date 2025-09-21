class CecilPreview < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.67.0-beta.6"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.67.0-beta.6/cecil.phar"
  sha256 "41051765533c98baa0ba3f0c623366b74d9843d242ffb03f99e44d711470a629"

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
