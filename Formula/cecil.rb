class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.111.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.111.0/cecil.phar"
  sha256 "1f3125c17a25790c1eeb381b5524bc9bafbde5310c369ba20707523e4095e560"

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
