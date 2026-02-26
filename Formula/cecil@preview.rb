class CecilPreview < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.86.0-beta.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.86.0-beta.1/cecil.phar"
  sha256 "53f8c0399202e95c882abb45b8a5e5156962a6d30ec848e767ac6f31f55ad08d"

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
