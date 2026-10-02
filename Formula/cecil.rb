class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.5.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.5.0/cecil.phar"
  sha256 "ae273d85acbc42dbee6b81c8c8e93a608edb784267b8cf32824049f37f67ce34"

  #depends_on "php"
  uses_from_macos "php", since: :monterey

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
