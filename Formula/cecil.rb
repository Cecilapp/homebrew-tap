class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.6.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.6.2/cecil.phar"
  sha256 "767174774fa0b21c7d0b0a1100e82f9be17bc18f1b333e250922a0c1a486eac8"

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
