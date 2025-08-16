class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.55.11"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.55.11/cecil.phar"
  sha256 "a8bfa44bb1deae68fdcf85df9d8096cec478c77fc49b53cfa4ca1e04044cfc08"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
