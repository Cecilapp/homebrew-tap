class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.28.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.28.0/cecil.phar"
  sha256 "a60b88a0f4ec3a6b20abe71537027182ddbef20f47d03726a3aa24ad0a7f5698"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
