class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.55.13"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.55.13/cecil.phar"
  sha256 "519ad35d018b1e883c0703567ba12623592cf835cd03556436a51269cdfd627c"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
