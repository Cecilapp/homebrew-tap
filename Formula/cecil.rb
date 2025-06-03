class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.45.8"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.45.8/cecil.phar"
  sha256 "c413500ed90b76883d5bd73ff559e334a65b141153dfa49751fae77b695dc3ff"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
