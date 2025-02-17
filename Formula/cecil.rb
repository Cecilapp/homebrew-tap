class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.30.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.30.0/cecil.phar"
  sha256 "c26c15535c0f5e937a91a78bae709105f4bc1ae6e3e6ce4a3e1010f35ebe1c76"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
