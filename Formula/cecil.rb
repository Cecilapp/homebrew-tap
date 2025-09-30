class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.66.6"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.66.6/cecil.phar"
  sha256 "feed00c771a4c21772d91ed8b0694125b6fff2e540eebfc99353c590b805693c"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
