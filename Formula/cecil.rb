class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.108.3"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.108.3/cecil.phar"
  sha256 "8876e0071b1582d0f35db36290537a7163181640992fae70403a76b5c76f08de"

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
