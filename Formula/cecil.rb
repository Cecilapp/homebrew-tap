class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.55.15"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.55.15/cecil.phar"
  sha256 "070427c1ad84261a33492363ebb78665215ccfba37fa4c920cd970ded1d3054e"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
