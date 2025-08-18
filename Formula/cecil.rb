class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.55.18"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.55.18/cecil.phar"
  sha256 "afebe9bb8a7751582a31ba63fdc4a1dc79bf61423c4a32d34d75872ec33b9c49"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
