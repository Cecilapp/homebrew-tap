class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.55.17"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.55.17/cecil.phar"
  sha256 "37095bac7dbe3711602f80d56344c2d7712bda4949a5f8e4324085365a698b05"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
