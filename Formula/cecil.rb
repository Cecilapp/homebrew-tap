class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.13.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.13.1/cecil.phar"
  sha256 "1e0821775978d117b45bf77a0d3701907192d9cb455078c07b8a2d2f39091f84"

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
