class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.64.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.64.1/cecil.phar"
  sha256 "3ddf96ab18ab2add094482ee443d1b27c4b2e5c58724c2bab689d2bc78523242"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
