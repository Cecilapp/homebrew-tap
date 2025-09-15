class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.65.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.65.2/cecil.phar"
  sha256 "a16e9dd84521a9130b8dcca127c544463e2a98daa329f8008fe5451632f2fc12"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
