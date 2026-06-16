class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.108.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.108.1/cecil.phar"
  sha256 "2cc57cfad85f37b9a019ff797894d43615e21b8b828068e58db07bd60e1cf963"

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
