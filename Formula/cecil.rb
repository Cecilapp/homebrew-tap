class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.60.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.60.0/cecil.phar"
  sha256 "9fe02e2855216ecfdcbb5a34e9a564415296f68a4159306b62098e5127ca927b"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
