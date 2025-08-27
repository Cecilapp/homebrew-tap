class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.62.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.62.1/cecil.phar"
  sha256 "058a14fddc0053ebcc36968df52f452a7b7558539770de3c40df1495dccb9f98"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
