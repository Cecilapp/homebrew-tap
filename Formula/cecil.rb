class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  url "https://github.com/Cecilapp/Cecil/releases/download/7.54.3/cecil.phar"
  version "7.54.3"
  sha256 "b5d9fd117115d45a13fa778a6e558dabdc4242e8b3f95eeff65982083bcd99ae"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
