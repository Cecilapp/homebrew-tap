class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.23.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.23.1/cecil.phar"
  sha256 "ca90434bef0b2efec4b4cb8c31f0a5d4df3e23e37ad5435fffbc96d73ff6a91c"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
