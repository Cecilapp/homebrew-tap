class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.51.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.51.0/cecil.phar"
  sha256 "dc241b5dc3bf67ec18465cfe3f7341d10d6182a266de8ecc66311d61f61ca9b0"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
