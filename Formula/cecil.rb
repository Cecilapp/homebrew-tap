class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.69.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.69.1/cecil.phar"
  sha256 "97469c14666c215ba626a9e13ab2f0466485bc7d87790fd8e1a268f0355f0277"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
