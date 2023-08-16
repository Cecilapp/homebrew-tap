class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.46.0/cecil.phar"
  version "7.46.0"
  sha256 "2b1263b080dbfb09fdb94d8c725c0bc1dc736e58b7cdc7ba743f50d3b1757c3b"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
