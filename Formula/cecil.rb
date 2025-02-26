class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.31.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.31.2/cecil.phar"
  sha256 "598b28f39dfae52516acf2d2403edf90233d6b1dcb334b8b0eaf46449b0e400c"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
