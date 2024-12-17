class CecilATBeta < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.0.0-beta.7"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.0.0-beta.7/cecil.phar"
  sha256 "5dcde19a8e23411f5c3081df47a78b746da5365e7ba0473d6215ae3a4b801830"

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
