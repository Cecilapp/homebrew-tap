class Cecil@preview < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.86.0-beta.4"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.86.0-beta.4/cecil.phar"
  sha256 "41fdba613a5b9ea5b53da4bcb105327352fcddb5dda673b0d064b46a466d2b79"

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
