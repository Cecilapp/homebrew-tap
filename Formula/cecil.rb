class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.9.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.9.2/cecil.phar"
  sha256 "3743a7d73669032448ede625faef61d1126bf8c6d6c4f5f71bc2abc041cd2ad7"

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
