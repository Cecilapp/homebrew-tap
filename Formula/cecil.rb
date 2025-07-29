class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.52.6"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.52.6/cecil.phar"
  sha256 "5ea866091a32425be2af356ebed93ac4b1cc9402bf703e75406f0490eb882039"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
