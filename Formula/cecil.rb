class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  url "https://github.com/Cecilapp/Cecil/releases/download/8.9.1/cecil.phar"
  version "8.9.1"
  sha256 "c5b23d347e3c5a60762e35553e4176a0d2b331b5c87b7a9e876e098b0ce0581d"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
